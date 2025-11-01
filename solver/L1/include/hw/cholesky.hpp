/*
 * Copyright 2021 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * @file cholesky.hpp
 * @brief This file contains cholesky functions
 *   - cholesky                 : Entry point function
 *   - choleskyTop              : Selects implementation based on traits
 *   - choleskyBasic            : Basic implementation (lower resource)
 *   - choleskyAlt              : Lower latency architecture (higher resource)
 *   - choleskyAlt2             : Further improved latency (higher resource)
 */

#ifndef _XF_SOLVER_CHOLESKY_HPP_
#define _XF_SOLVER_CHOLESKY_HPP_

#include "ap_fixed.h"
#include "hls_x_complex.h"
#include "hls_math.h"
#include <complex>
#include <type_traits>
#include "utils/std_complex_utils.h"
#include "utils/x_matrix_utils.hpp"
#include "hls_stream.h"

namespace xf {
namespace solver {

// ===================================================================================================================
// Traits
template <bool LowerTriangularL, int RowsColsA, typename InputType, typename OutputType>
struct choleskyTraits {
    typedef InputType PROD_T;
    typedef InputType ACCUM_T;
    typedef InputType ADD_T;
    typedef InputType DIAG_T;
    typedef InputType RECIP_DIAG_T;
    typedef InputType OFF_DIAG_T;
    typedef OutputType L_OUTPUT_T;

    // 0=Basic, 1=Alt, 2=Alt2
    static const int ARCH = 1;
    static const int INNER_II = 1;
    // 用于 Alt2 中的可选展开；保持 1（可由外部定义宏提升到 2）
    static const int UNROLL_FACTOR = 1;
    static const int UNROLL_DIM = (LowerTriangularL == true ? 1 : 2);
    static const int ARCH2_ZERO_LOOP = true;
};

// Specialization for hls::x_complex
template <bool LowerTriangularL, int RowsColsA, typename IBT, typename OBT>
struct choleskyTraits<LowerTriangularL, RowsColsA,
                      hls::x_complex<IBT>, hls::x_complex<OBT> > {
    typedef hls::x_complex<IBT> PROD_T;
    typedef hls::x_complex<IBT> ACCUM_T;
    typedef hls::x_complex<IBT> ADD_T;
    typedef hls::x_complex<IBT> DIAG_T;
    typedef IBT                  RECIP_DIAG_T;
    typedef hls::x_complex<IBT> OFF_DIAG_T;
    typedef hls::x_complex<OBT> L_OUTPUT_T;

    static const int ARCH = 1;
    static const int INNER_II = 1;
    static const int UNROLL_FACTOR = 1;
    static const int UNROLL_DIM = (LowerTriangularL == true ? 1 : 2);
    static const int ARCH2_ZERO_LOOP = true;
};

// Specialization for std::complex
template <bool LowerTriangularL, int RowsColsA, typename IBT, typename OBT>
struct choleskyTraits<LowerTriangularL, RowsColsA,
                      std::complex<IBT>, std::complex<OBT> > {
    typedef std::complex<IBT> PROD_T;
    typedef std::complex<IBT> ACCUM_T;
    typedef std::complex<IBT> ADD_T;
    typedef std::complex<IBT> DIAG_T;
    typedef IBT                RECIP_DIAG_T;
    typedef std::complex<IBT> OFF_DIAG_T;
    typedef std::complex<OBT> L_OUTPUT_T;

    static const int ARCH = 1;
    static const int INNER_II = 1;
    static const int UNROLL_FACTOR = 1;
    static const int UNROLL_DIM = (LowerTriangularL == true ? 1 : 2);
    static const int ARCH2_ZERO_LOOP = true;
};

// Specialization for ap_fixed
template <bool LowerTriangularL, int RowsColsA,
          int W1, int I1, ap_q_mode Q1, ap_o_mode O1, int N1,
          int W2, int I2, ap_q_mode Q2, ap_o_mode O2, int N2>
struct choleskyTraits<LowerTriangularL, RowsColsA,
                      ap_fixed<W1, I1, Q1, O1, N1>,
                      ap_fixed<W2, I2, Q2, O2, N2> > {
    typedef ap_fixed<W1 + W1, I1 + I1, AP_RND_CONV, AP_SAT, 0> PROD_T;
    typedef ap_fixed<W1 + W1, I1 + I1, AP_RND_CONV, AP_SAT, 0> ACCUM_T;
    typedef ap_fixed<W1 + 1 , I1 + 1 , AP_RND_CONV, AP_SAT, 0> ADD_T;
    typedef ap_fixed<(W1 + 1) * 2, I1 + 1, AP_RND_CONV, AP_SAT, 0> DIAG_T;
    typedef ap_fixed<(W1 + 1) * 2, I1 + 1, AP_RND_CONV, AP_SAT, 0> OFF_DIAG_T;
    typedef ap_fixed<W2 + (W2 - I2) + 2, (W2 - I2) + 2, AP_RND_CONV, AP_SAT, 0> RECIP_DIAG_T;
    typedef ap_fixed<W2, I2, AP_RND_CONV, AP_SAT, 0> L_OUTPUT_T;

    static const int ARCH = 1;
    static const int INNER_II = 1;
    static const int UNROLL_FACTOR = 1;
    static const int UNROLL_DIM = (LowerTriangularL == true ? 1 : 2);
    static const int ARCH2_ZERO_LOOP = true;
};

// Specialization for hls::x_complex<ap_fixed>
template <bool LowerTriangularL, int RowsColsA,
          int W1, int I1, ap_q_mode Q1, ap_o_mode O1, int N1,
          int W2, int I2, ap_q_mode Q2, ap_o_mode O2, int N2>
struct choleskyTraits<LowerTriangularL, RowsColsA,
                      hls::x_complex<ap_fixed<W1, I1, Q1, O1, N1>>,
                      hls::x_complex<ap_fixed<W2, I2, Q2, O2, N2>> > {
    typedef hls::x_complex<ap_fixed<W1 + W1, I1 + I1, AP_RND_CONV, AP_SAT, 0>> PROD_T;
    typedef hls::x_complex<ap_fixed<W1 + W1, I1 + I1, AP_RND_CONV, AP_SAT, 0>> ACCUM_T;
    typedef hls::x_complex<ap_fixed<W1 + 1 , I1 + 1 , AP_RND_CONV, AP_SAT, 0>> ADD_T;
    typedef hls::x_complex<ap_fixed<(W1 + 1) * 2, I1 + 1, AP_RND_CONV, AP_SAT, 0>> DIAG_T;
    typedef hls::x_complex<ap_fixed<(W1 + 1) * 2, I1 + 1, AP_RND_CONV, AP_SAT, 0>> OFF_DIAG_T;
    typedef ap_fixed<W2 + (W2 - I2) + 2, (W2 - I2) + 2, AP_RND_CONV, AP_SAT, 0> RECIP_DIAG_T;
    typedef hls::x_complex<ap_fixed<W2, I2, AP_RND_CONV, AP_SAT, 0>> L_OUTPUT_T;

    static const int ARCH = 1;
    static const int INNER_II = 1;
    static const int UNROLL_FACTOR = 1;
    static const int UNROLL_DIM = (LowerTriangularL == true ? 1 : 2);
    static const int ARCH2_ZERO_LOOP = true;
};

// Specialization for std::complex<ap_fixed>
template <bool LowerTriangularL, int RowsColsA,
          int W1, int I1, ap_q_mode Q1, ap_o_mode O1, int N1,
          int W2, int I2, ap_q_mode Q2, ap_o_mode O2, int N2>
struct choleskyTraits<LowerTriangularL, RowsColsA,
                      std::complex<ap_fixed<W1, I1, Q1, O1, N1>>,
                      std::complex<ap_fixed<W2, I2, Q2, O2, N2>> > {
    typedef std::complex<ap_fixed<W1 + W1, I1 + I1, AP_RND_CONV, AP_SAT, 0>> PROD_T;
    typedef std::complex<ap_fixed<W1 + W1, I1 + I1, AP_RND_CONV, AP_SAT, 0>> ACCUM_T;
    typedef std::complex<ap_fixed<W1 + 1 , I1 + 1 , AP_RND_CONV, AP_SAT, 0>> ADD_T;
    typedef std::complex<ap_fixed<(W1 + 1) * 2, I1 + 1, AP_RND_CONV, AP_SAT, 0>> DIAG_T;
    typedef std::complex<ap_fixed<(W1 + 1) * 2, I1 + 1, AP_RND_CONV, AP_SAT, 0>> OFF_DIAG_T;
    typedef ap_fixed<W2 + (W2 - I2) + 2, (W2 - I2) + 2, AP_RND_CONV, AP_SAT, 0> RECIP_DIAG_T;
    typedef std::complex<ap_fixed<W2, I2, AP_RND_CONV, AP_SAT, 0>> L_OUTPUT_T;

    static const int ARCH = 1;
    static const int INNER_II = 1;
    static const int UNROLL_FACTOR = 1;
    static const int UNROLL_DIM = (LowerTriangularL == true ? 1 : 2);
    static const int ARCH2_ZERO_LOOP = true;
};

// ===================================================================================================================
// Helper: sqrt
template <typename T_IN, typename T_OUT>
int cholesky_sqrt_op(T_IN a, T_OUT& b) {
Function_cholesky_sqrt_op_real:;
    const T_IN ZERO = 0;
    if (a < ZERO) {
        b = ZERO;
        return 1;
    }
    b = x_sqrt(a);
    return 0;
}

// ap_fixed sqrt
template <int W, int I, ap_q_mode Q, ap_o_mode O, int N, typename T_OUT>
int cholesky_sqrt_op(ap_fixed<W, I, Q, O, N> a, T_OUT& b) {
#pragma HLS inline
    const ap_fixed<W, I, Q, O, N> ZERO = 0;
    if (a < ZERO) {
        b = (T_OUT)0;
        return 1;
    }
    float af = (float)a;
    b = (T_OUT)hls::sqrtf(af);
    return 0;
}

// hls::x_complex sqrt (diag 只对实部开方)
template <typename T_IN, typename T_OUT>
int cholesky_sqrt_op(hls::x_complex<T_IN> din, hls::x_complex<T_OUT>& dout) {
Function_cholesky_sqrt_op_complex:;
    const T_IN ZERO = 0;
    T_IN a = din.real();
    dout.imag(ZERO);
    if (a < ZERO) {
        dout.real(ZERO);
        return 1;
    }
    dout.real(x_sqrt(a));
    return 0;
}

// hls::x_complex<ap_fixed> sqrt
template <int W, int I, ap_q_mode Q, ap_o_mode O, int N, typename T_OUT>
int cholesky_sqrt_op(hls::x_complex<ap_fixed<W, I, Q, O, N> > din,
                     hls::x_complex<T_OUT>& dout) {
#pragma HLS inline
    const ap_fixed<W, I, Q, O, N> ZERO = 0;
    ap_fixed<W, I, Q, O, N> a = din.real();
    if (a < ZERO) {
        dout.real((T_OUT)0);
        dout.imag((T_OUT)0);
        return 1;
    }
    float af = (float)a;
    dout.real((T_OUT)hls::sqrtf(af));
    dout.imag((T_OUT)0);
    return 0;
}

// std::complex sqrt (diag 只对实部开方)
template <typename T_IN, typename T_OUT>
int cholesky_sqrt_op(std::complex<T_IN> din, std::complex<T_OUT>& dout) {
Function_cholesky_sqrt_op_complex_std:;
    const T_IN ZERO = 0;
    T_IN a = din.real();
    dout.imag(ZERO);
    if (a < ZERO) {
        dout.real(ZERO);
        return 1;
    }
    dout.real(x_sqrt(a));
    return 0;
}

// std::complex<ap_fixed> sqrt
template <int W, int I, ap_q_mode Q, ap_o_mode O, int N, typename T_OUT>
int cholesky_sqrt_op(std::complex<ap_fixed<W, I, Q, O, N> > din,
                     std::complex<T_OUT>& dout) {
#pragma HLS inline
    const ap_fixed<W, I, Q, O, N> ZERO = 0;
    ap_fixed<W, I, Q, O, N> a = din.real();
    if (a < ZERO) {
        dout.real((T_OUT)0);
        dout.imag((T_OUT)0);
        return 1;
    }
    float af = (float)a;
    dout.real((T_OUT)hls::sqrtf(af));
    dout.imag((T_OUT)0);
    return 0;
}

// Reciprocal sqrt (默认)
template <typename InputType, typename OutputType>
void cholesky_rsqrt(InputType x, OutputType& res) {
Function_cholesky_rsqrt_default:;
    res = x_rsqrt(x);
}

// ap_fixed rsqrt：用 sqrt + 取倒数，避免类型歧义
template <int W1, int I1, ap_q_mode Q1, ap_o_mode O1, int N1,
          int W2, int I2, ap_q_mode Q2, ap_o_mode O2, int N2>
void cholesky_rsqrt(ap_fixed<W1, I1, Q1, O1, N1> x,
                    ap_fixed<W2, I2, Q2, O2, N2>& res) {
#pragma HLS inline
    ap_fixed<W2, I2, Q2, O2, N2> one = 1;
    float xf = (float)x;
    float s = hls::sqrtf(xf);
    if (s == 0.0f) {
        res = 0;
    } else {
        res = one / (ap_fixed<W2, I2, Q2, O2, N2>)s;
    }
}

// ===================================================================================================================
// Helpers: real part & reciprocal by diag
template <typename T>
inline T cholesky_real_part(const T& v) {
#pragma HLS inline
    return v;
}
template <typename T>
inline T cholesky_real_part(const hls::x_complex<T>& v) {
#pragma HLS inline
    return v.real();
}
template <typename T>
inline T cholesky_real_part(const std::complex<T>& v) {
#pragma HLS inline
    return v.real();
}

// 用已计算对角值做倒数（修复 ap_fixed 三目歧义）
template <typename DiagType, typename RecipType>
inline void cholesky_diag_recip(const DiagType& diag_in, RecipType& recip_out) {
#pragma HLS inline
    const RecipType zero = 0;
    const RecipType one  = 1;

    RecipType d = (RecipType)cholesky_real_part(diag_in);
    if (d == (RecipType)0) {
        recip_out = zero;
    } else {
        recip_out = (RecipType)(one / d);
    }
}

// Local multiplier: complex(real)*real
template <typename AType, typename BType, typename CType>
void cholesky_prod_sum_mult(AType A, BType B, CType& C) {
Function_cholesky_prod_sum_mult_real:;
    C = A * B;
}
template <typename AType, typename BType, typename CType>
void cholesky_prod_sum_mult(hls::x_complex<AType> A, BType B, hls::x_complex<CType>& C) {
Function_cholesky_prod_sum_mult_complex_x:;
    C.real(A.real() * B);
    C.imag(A.imag() * B);
}
template <typename AType, typename BType, typename CType>
void cholesky_prod_sum_mult(std::complex<AType> A, BType B, std::complex<CType>& C) {
Function_cholesky_prod_sum_mult_complex_std:;
    C.real(A.real() * B);
    C.imag(A.imag() * B);
}

// ===================================================================================================================
// choleskyBasic
template <bool LowerTriangularL, int RowsColsA, typename CholeskyTraits, class InputType, class OutputType>
int choleskyBasic(const InputType A[RowsColsA][RowsColsA],
                  OutputType L[RowsColsA][RowsColsA]) {
    int return_code = 0;

    typename CholeskyTraits::PROD_T  prod;
    typename CholeskyTraits::ACCUM_T sum[RowsColsA];
    typename CholeskyTraits::ACCUM_T A_cast_to_sum;
    typename CholeskyTraits::ACCUM_T prod_cast_to_sum;

    typename CholeskyTraits::ADD_T       A_minus_sum;
    typename CholeskyTraits::DIAG_T      new_L_diag;
    typename CholeskyTraits::OFF_DIAG_T  new_L_off_diag;
    typename CholeskyTraits::OFF_DIAG_T  L_cast_to_new_L_off_diag;
    typename CholeskyTraits::L_OUTPUT_T  new_L;

    OutputType L_internal[RowsColsA][RowsColsA];

col_loop:
    for (int j = 0; j < RowsColsA; j++) {
        sum[j] = 0;

    // Diagonal
    diag_loop:
        for (int k = 0; k < RowsColsA; k++) {
            if (k <= (j - 1)) {
                OutputType retrieved_L;
                if (LowerTriangularL == true) {
                    retrieved_L = L_internal[j][k];
                } else {
                    retrieved_L = L_internal[k][j];
                }
                sum[j] = hls::x_conj(retrieved_L) * retrieved_L;
            }
        }
        A_cast_to_sum = A[j][j];
        A_minus_sum = A_cast_to_sum - sum[j];
        if (cholesky_sqrt_op(A_minus_sum, new_L_diag)) {
#ifndef __SYNTHESIS__
            printf("ERROR: Trying to find the square root of a negative number\n");
#endif
            return_code = 1;
        }
        new_L = new_L_diag;
        if (LowerTriangularL == true) {
            L_internal[j][j] = new_L;
            L[j][j] = new_L;
        } else {
            L_internal[j][j] = hls::x_conj(new_L);
            L[j][j] = hls::x_conj(new_L);
        }

    // Off-diagonal
    off_diag_loop:
        for (int i = 0; i < RowsColsA; i++) {
            if (i > j) {
                if (LowerTriangularL == true) {
                    sum[j] = A[i][j];
                } else {
                    sum[j] = hls::x_conj(A[j][i]);
                }

            sum_loop:
                for (int k = 0; k < RowsColsA; k++) {
#pragma HLS PIPELINE II = CholeskyTraits::INNER_II
                    if (k <= (j - 1)) {
                        if (LowerTriangularL == true) {
                            prod = -L_internal[i][k] * hls::x_conj(L_internal[j][k]);
                        } else {
                            prod = -hls::x_conj(L_internal[k][i]) * (L_internal[k][j]);
                        }
                        prod_cast_to_sum = prod;
                        sum[j] += prod_cast_to_sum;
                    }
                }

                new_L_off_diag = sum[j];
                L_cast_to_new_L_off_diag = L_internal[j][j];
                // 对角实数，避免复数除法
                new_L_off_diag = new_L_off_diag / hls::x_real(L_cast_to_new_L_off_diag);
                new_L = new_L_off_diag;

                if (LowerTriangularL == true) {
                    L[i][j] = new_L;
                    L_internal[i][j] = new_L;
                } else {
                    L[j][i] = hls::x_conj(new_L);
                    L_internal[j][i] = hls::x_conj(new_L);
                }
            } else if (i < j) {
                if (LowerTriangularL == true) {
                    L[i][j] = 0;
                } else {
                    L[j][i] = 0;
                }
            }
        }
    }
    return return_code;
}

// ===================================================================================================================
// choleskyAlt
template <bool LowerTriangularL, int RowsColsA, typename CholeskyTraits, class InputType, class OutputType>
int choleskyAlt(const InputType A[RowsColsA][RowsColsA],
                OutputType L[RowsColsA][RowsColsA]) {
    int return_code = 0;

    OutputType L_internal[(RowsColsA * RowsColsA - RowsColsA) / 2];
    typename CholeskyTraits::RECIP_DIAG_T diag_internal[RowsColsA];

    typename CholeskyTraits::ACCUM_T square_sum;
    typename CholeskyTraits::ACCUM_T A_cast_to_sum;
    typename CholeskyTraits::ADD_T   A_minus_sum;
    typename CholeskyTraits::DIAG_T  new_L_diag;
    typename CholeskyTraits::RECIP_DIAG_T new_L_diag_recip;
    typename CholeskyTraits::PROD_T  prod;
    typename CholeskyTraits::ACCUM_T prod_cast_to_sum;
    typename CholeskyTraits::ACCUM_T product_sum;
    typename CholeskyTraits::OFF_DIAG_T prod_cast_to_off_diag;
    typename CholeskyTraits::RECIP_DIAG_T L_diag_recip;
    typename CholeskyTraits::OFF_DIAG_T new_L_off_diag;
    typename CholeskyTraits::L_OUTPUT_T new_L;

row_loop:
    for (int i = 0; i < RowsColsA; i++) {
        int i_sub1 = i - 1;
        int i_off = ((i_sub1 * i_sub1 - i_sub1) / 2) + i_sub1;

        square_sum = 0;
    col_loop:
        for (int j = 0; j < i; j++) {
#pragma HLS loop_tripcount max = 1 + RowsColsA / 2
            int j_sub1 = j - 1;
            int j_off = ((j_sub1 * j_sub1 - j_sub1) / 2) + j_sub1;

            if (LowerTriangularL == true) {
                product_sum = A[i][j];
            } else {
                product_sum = hls::x_conj(A[j][i]);
            }

        sum_loop:
            for (int k = 0; k < j; k++) {
#pragma HLS loop_tripcount max = 1 + RowsColsA / 2
#pragma HLS PIPELINE II = CholeskyTraits::INNER_II
                prod = -L_internal[i_off + k] * hls::x_conj(L_internal[j_off + k]);
                prod_cast_to_sum = prod;
                product_sum += prod_cast_to_sum;
            }
            prod_cast_to_off_diag = product_sum;
            L_diag_recip = diag_internal[j];
            cholesky_prod_sum_mult(prod_cast_to_off_diag, L_diag_recip, new_L_off_diag);
            new_L = new_L_off_diag;

            square_sum += hls::x_conj(new_L) * new_L;

            L_internal[i_off + j] = new_L;
            if (LowerTriangularL == true) {
                L[i][j] = new_L;
                L[j][i] = 0;
            } else {
                L[j][i] = hls::x_conj(new_L);
                L[i][j] = 0;
            }
        }

        // diagonal
        A_cast_to_sum = A[i][i];
        A_minus_sum = A_cast_to_sum - square_sum;
        if (cholesky_sqrt_op(A_minus_sum, new_L_diag)) {
#ifndef __SYNTHESIS__
            printf("ERROR: Trying to find the square root of a negative number\n");
#endif
            return_code = 1;
        }
        new_L = new_L_diag;

        // 直接用已得对角值计算其倒数，避免每次除法
        cholesky_diag_recip(new_L, new_L_diag_recip);
        diag_internal[i] = new_L_diag_recip;

        if (LowerTriangularL == true) {
            L[i][i] = new_L;
        } else {
            L[i][i] = hls::x_conj(new_L);
        }
    }
    return return_code;
}

// ===================================================================================================================
// choleskyAlt2
template <bool LowerTriangularL, int RowsColsA, typename CholeskyTraits, class InputType, class OutputType>
int choleskyAlt2(const InputType A[RowsColsA][RowsColsA],
                 OutputType L[RowsColsA][RowsColsA]) {
    int return_code = 0;

    OutputType L_internal[RowsColsA][RowsColsA];
    OutputType prod_column_top;

    typename CholeskyTraits::ACCUM_T A_cast_to_sum;
    typename CholeskyTraits::ADD_T   A_minus_sum;
    typename CholeskyTraits::DIAG_T  new_L_diag;
    typename CholeskyTraits::RECIP_DIAG_T new_L_diag_recip;
    typename CholeskyTraits::PROD_T  prod;
    typename CholeskyTraits::ACCUM_T prod_cast_to_sum;
    typename CholeskyTraits::ACCUM_T product_sum;
    typename CholeskyTraits::ACCUM_T product_sum_array[RowsColsA];
    typename CholeskyTraits::OFF_DIAG_T prod_cast_to_off_diag;
    typename CholeskyTraits::OFF_DIAG_T new_L_off_diag;
    typename CholeskyTraits::L_OUTPUT_T new_L;
    typename CholeskyTraits::ACCUM_T diag_square_sum;

#pragma HLS ARRAY_PARTITION variable = A           cyclic dim = CholeskyTraits::UNROLL_DIM factor = CholeskyTraits::UNROLL_FACTOR
#pragma HLS ARRAY_PARTITION variable = L           cyclic dim = CholeskyTraits::UNROLL_DIM factor = CholeskyTraits::UNROLL_FACTOR
#pragma HLS ARRAY_PARTITION variable = L_internal  cyclic dim = CholeskyTraits::UNROLL_DIM factor = CholeskyTraits::UNROLL_FACTOR
#pragma HLS ARRAY_PARTITION variable = product_sum_array cyclic dim = 1 factor = CholeskyTraits::UNROLL_FACTOR

col_loop:
    for (int j = 0; j < RowsColsA; j++) {

        // diagonal accumulation
        if (j == 0) {
            diag_square_sum = 0;
        } else {
            diag_square_sum = 0;
        diag_acc_loop:
            for (int k = 0; k < RowsColsA; k++) {
#pragma HLS UNROLL factor = CholeskyTraits::UNROLL_FACTOR
                if (k < j) {
                    OutputType ljk = L_internal[j][k];
                    diag_square_sum += hls::x_conj(ljk) * ljk;
                }
            }
        }

        // diagonal
        A_cast_to_sum = A[j][j];
        A_minus_sum = (j == 0) ? A_cast_to_sum : (A_cast_to_sum - diag_square_sum);
        if (cholesky_sqrt_op(A_minus_sum, new_L_diag)) {
#ifndef __SYNTHESIS__
            printf("ERROR: Trying to find the square root of a negative number\n");
#endif
            return_code = 1;
        }
        new_L = new_L_diag;

        // 生成对角倒数供后续乘法使用
        cholesky_diag_recip(new_L, new_L_diag_recip);

        if (LowerTriangularL == true) {
            L[j][j] = new_L;
        } else {
            L[j][j] = hls::x_conj(new_L);
        }

    sum_loop:
        for (int k = 0; k <= j; k++) {
#pragma HLS loop_tripcount max = 1 + RowsColsA / 2
            prod_column_top = -hls::x_conj(L_internal[j][k]);

        row_loop:
            for (int i = 0; i < RowsColsA; i++) {
#pragma HLS LOOP_FLATTEN off
#pragma HLS PIPELINE II = CholeskyTraits::INNER_II
#pragma HLS UNROLL FACTOR = CholeskyTraits::UNROLL_FACTOR
                if (i > j) {
                    prod = L_internal[i][k] * prod_column_top;
                    prod_cast_to_sum = prod;

                    if (k == 0) {
                        if (LowerTriangularL == true) {
                            A_cast_to_sum = A[i][j];
                        } else {
                            A_cast_to_sum = hls::x_conj(A[j][i]);
                        }
                        product_sum = A_cast_to_sum;
                    } else {
                        product_sum = product_sum_array[i];
                    }

                    if (k < j) {
                        product_sum_array[i] = product_sum + prod_cast_to_sum;
                    } else {
                        prod_cast_to_off_diag = product_sum;
                        cholesky_prod_sum_mult(prod_cast_to_off_diag, new_L_diag_recip, new_L_off_diag);
                        new_L = new_L_off_diag;

                        L_internal[i][j] = new_L;

                        if (LowerTriangularL == true) {
                            L[i][j] = new_L;
                            if (!CholeskyTraits::ARCH2_ZERO_LOOP) L[j][i] = 0;
                        } else {
                            L[j][i] = hls::x_conj(new_L);
                            if (!CholeskyTraits::ARCH2_ZERO_LOOP) L[i][j] = 0;
                        }
                    }
                }
            }
        }
    }

    if (CholeskyTraits::ARCH2_ZERO_LOOP) {
    zero_rows_loop:
        for (int i = 0; i < RowsColsA - 1; i++) {
        zero_cols_loop:
            for (int j = i + 1; j < RowsColsA; j++) {
#pragma HLS loop_tripcount max = 1 + RowsColsA / 2
#pragma HLS PIPELINE
                if (LowerTriangularL == true) {
                    L[i][j] = 0;
                } else {
                    L[j][i] = 0;
                }
            }
        }
    }
    return return_code;
}

// ===================================================================================================================
// Top
template <bool LowerTriangularL, int RowsColsA, typename CholeskyTraits, class InputType, class OutputType>
int choleskyTop(const InputType A[RowsColsA][RowsColsA],
                OutputType L[RowsColsA][RowsColsA]) {
    switch (CholeskyTraits::ARCH) {
        case 0:
            return choleskyBasic<LowerTriangularL, RowsColsA, CholeskyTraits, InputType, OutputType>(A, L);
        case 1:
            return choleskyAlt  <LowerTriangularL, RowsColsA, CholeskyTraits, InputType, OutputType>(A, L);
        case 2:
            return choleskyAlt2 <LowerTriangularL, RowsColsA, CholeskyTraits, InputType, OutputType>(A, L);
        default:
            return choleskyBasic<LowerTriangularL, RowsColsA, CholeskyTraits, InputType, OutputType>(A, L);
    }
}

/**
* @brief cholesky
*
* @tparam LowerTriangularL   When false generates the result in the upper triangle
* @tparam RowsColsA          Matrix dimension
* @tparam InputType          Input data type
* @tparam OutputType         Output data type
* @tparam TRAITS             choleskyTraits
*
* @param matrixAStrm         Stream of Hermitian/symmetric positive definite input matrix
* @param matrixLStrm         Stream of Lower or Upper triangular output matrix
*
* @return 0=Success, 1=Failure (sqrt of negative)
*/
template <bool LowerTriangularL,
          int RowsColsA,
          class InputType,
          class OutputType,
          typename TRAITS = choleskyTraits<LowerTriangularL, RowsColsA, InputType, OutputType> >
int cholesky(hls::stream<InputType>& matrixAStrm,
             hls::stream<OutputType>& matrixLStrm) {
    InputType  A[RowsColsA][RowsColsA];
    OutputType L[RowsColsA][RowsColsA];

read_matrix_rows:
    for (int r = 0; r < RowsColsA; r++) {
    read_matrix_cols:
        for (int c = 0; c < RowsColsA; c++) {
#pragma HLS PIPELINE II = 1
            matrixAStrm.read(A[r][c]);
        }
    }

    int ret = choleskyTop<LowerTriangularL, RowsColsA, TRAITS, InputType, OutputType>(A, L);

write_matrix_rows:
    for (int r = 0; r < RowsColsA; r++) {
    write_matrix_cols:
        for (int c = 0; c < RowsColsA; c++) {
#pragma HLS PIPELINE II = 1
            matrixLStrm.write(L[r][c]);
        }
    }
    return ret;
}

} // end namespace solver
} // end namespace xf

#endif // _XF_SOLVER_CHOLESKY_HPP_
