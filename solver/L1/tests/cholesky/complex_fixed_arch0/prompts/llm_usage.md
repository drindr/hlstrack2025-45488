# 大模型辅助使用记录

## 基本信息

- **模型名称**：
  - **OpenAI 系列**：gpt-5
- **提供方 / 访问方式**：
  - OpenAI API (api.openai.com)
- **使用日期**：2025-10-30
- **项目名称**：cholesky算子优化

---

## 使用场景 1

### 主要用途
代码优化

### 完整 Prompt 内容
```
根据我目前已经优化的代码，对于Arch=1部分的内容，和Arch=2的内容进行比较，对sqrt 部分进行优化，完善带宽约束，并且尝试修改Unroll参数，以提高性能。
```

### 模型输出摘要
优化点聚焦 ARCH=1（choleskyAlt） 的时延缩短，且尽量不增加 xc7z020 资源压力：
- 在 traits 中加入可控开关与参数：
  ALT_USE_RSQRT（默认开启，继续用 rsqrt 路线避免除法）、ALT_UNROLL_K（对 k 累加环进行部分展开以降低每列时延）、ALT_PIPE_II（内环目标 II），以及 ALT_PARTITION_FACTOR（为 L_internal 的 1D 存储做循环分块以提升带宽、减少端口冲突）。

- ARCH=1(choleskyAlt) 中：

    保持 rsqrt(A_minus_sum) 的 off-diag 路径；

    对 k-loop 做部分展开（默认2，可按需要在 traits 中调大/调小以满足资源与时序）；

    对 1D 的 L_internal 做 cyclic ARRAY_PARTITION，因其按 i_off + k/j_off + k 访问，循环分块能提升多点并发读写的概率；

    加入 #pragma HLS DEPENDENCE 以提示 HLS 减弱对跨迭代写后读的保守依赖；

    进一步在 sum-loop 中将乘法-加法链条收紧（减少条件判断在关键路径出现的频度），并合理设置 PIPELINE II = ALT_PIPE_II；


- 针对 ap_fixed / 复数 fixed-point 的 sqrt 重载全部保留，统一走 hls::sqrtf(float)，只对实部开方（Cholesky 对角为实数），保持数值正确与资源可控；

- I/O 流读写保留 II=1 pipeline 以锁定接口吞吐。
### 人工审核与采纳情况
全部采纳，在尝试修改Unroll参数后，发现会资源超限，改回原本保守的代码
-->

---

## 使用场景 2

### 主要用途
调试分析

### 完整 Prompt 内容
```
根据csynth.rpt 的关键段，将ALT_UNROLL_K / ALT_PARTITION_FACTOR / ALT_PIPE_II 精调一档，让时延进一步缩短且不超出 xc7z020 预算。
```

### 模型输出摘要
1) 自定义 Traits（UNROLL_FACTOR=2）
2) 在 choleskyAlt 里加一行 pragma（让 unroll 生效
3) DSP：factor=2 近似把内层乘法器翻倍。xc7z020 共有 220 个 DSP48E1，一般 Cholesky 的乘法数量随矩阵阶次增长。若报告显示有足够 DSP slack（你之前说“slack>0、资源不超限”），factor=2 是比较稳的折中。
BRAM/FF/LUT：此改动基本不增加片上存储，仅对算子并行度有影响。
### 人工审核与采纳情况
采取建议2、3, 并根据csynth.rpt 调整ALT_PIPE_II 为 2，使时延进一步缩短。

---

## 总结

### 整体贡献度评估
<!-- 例如：
- 大模型在本项目中的总体贡献占比：约 50%
- 主要帮助领域：代码优化 / 调试分析
- 人工介入与修正比例：约 80%
-->

### 学习收获
<!-- 通过与大模型交互，您学到了哪些新知识或优化技巧？ -->

---

## 附注

- 请确保填写真实、完整的使用记录
- 如未使用大模型辅助，请在此文件中注明"本项目未使用大模型辅助"
- 评审方将参考此记录了解项目的独立性与创新性
