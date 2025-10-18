## User

[@sha224_256.hpp](zed:///agent/file?path=%2Fhome%2Fdrin%2Fworkspace%2Ffpga%2Fvitis%2Fhlstrack2025%2Fsecurity%2FL1%2Finclude%2Fxf_security%2Fsha224_256.hpp) analyze and summary the process of this algorithm and implementation

**Tool Call: Read file `hlstrack2025/security/L1/include/xf_security/sha224_256.hpp` (lines 1-140)**
Status: Completed

```/home/drin/workspace/fpga/vitis/hlstrack2025/security/L1/include/xf_security/sha224_256.hpp
/*
 * Copyright 2019 Xilinx, Inc.
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

#ifndef _XF_SECURITY_SHA224_256_HPP_
#define _XF_SECURITY_SHA224_256_HPP_

#include <ap_int.h>
#include <hls_stream.h>

#include "xf_security/types.hpp"
#include "xf_security/utils.hpp"

// For debug
#ifndef __SYNTHESIS__
#include <cstdio>
#endif
#ifndef _DEBUG
#define _DEBUG (0)
#endif
#define _XF_SECURITY_VOID_CAST static_cast<void>
// XXX toggle here to debug this file
#define _XF_SECURITY_PRINT(msg...) \
    do {                           \
        if (_DEBUG) printf(msg);   \
    } while (0)

#define ROTR(n, x) ((x >> n) | (x << (32 - n)))
#define ROTL(n, x) ((x << n) | (x >> (32 - n)))
#define SHR(n, x) (x >> n)
#define CH(x, y, z) ((x & y) ^ ((~x) & z))
#define MAJ(x, y, z) ((x & y) ^ (x & z) ^ (y & z))
#define BSIG0(x) (ROTR(2, x) ^ ROTR(13, x) ^ ROTR(22, x))
#define BSIG1(x) (ROTR(6, x) ^ ROTR(11, x) ^ ROTR(25, x))
#define SSIG0(x) (ROTR(7, x) ^ ROTR(18, x) ^ SHR(3, x))
#define SSIG1(x) (ROTR(17, x) ^ ROTR(19, x) ^ SHR(10, x))

namespace xf {
namespace security {
namespace internal {

/// Processing block
struct SHA256Block {
    uint32_t M[16];
};

/// @brief Static config for SHA224 and SHA256.
template <bool do_sha224>
struct sha256_digest_config;

template <>
struct sha256_digest_config<true> {
    static const short numH = 7;
};

template <>
struct sha256_digest_config<false> {
    static const short numH = 8;
};

/// @brief Generate 512bit processing blocks for SHA224/SHA256 (pipeline)
/// with const width.
/// The performance goal of this function is to yield a 512b block per cycle.
/// @param msg_strm the message being hashed.
/// @param len_strm the message length in byte.
/// @param end_len_strm that flag to signal end of input.
/// @param blk_strm the 512-bit hash block.
/// @param nblk_strm the number of hash block for this message.
/// @param end_nblk_strm end flag for number of hash block.
inline void preProcessing(hls::stream<ap_uint<32> >& msg_strm,
                          hls::stream<ap_uint<64> >& len_strm,
                          hls::stream<bool>& end_len_strm,
                          hls::stream<SHA256Block>& blk_strm,
                          hls::stream<uint64_t>& nblk_strm,
                          hls::stream<bool>& end_nblk_strm) {
LOOP_SHA256_GENENERATE_MAIN:
    for (bool end_flag = end_len_strm.read(); !end_flag; end_flag = end_len_strm.read()) {
        /// message length in byte.
        uint64_t len = len_strm.read();
        /// message length in bit.
        uint64_t L = 8 * len;
        /// total number blocks to digest.
        uint64_t blk_num = (len >> 6) + 1 + ((len & 0x3f) > 55);
        // inform digest function.
        nblk_strm.write(blk_num);
        end_nblk_strm.write(false);

    LOOP_SHA256_GEN_FULL_BLKS:
        for (uint64_t j = 0; j < uint64_t(len >> 6); ++j) {
#pragma HLS pipeline II = 16
#pragma HLS loop_tripcount min = 0 max = 1
            /// message block.
            SHA256Block b0;
#pragma HLS array_partition variable = b0.M complete
        // this block will hold 64 byte of message.
        LOOP_SHA256_GEN_ONE_FULL_BLK:
            for (int i = 0; i < 16; ++i) {
#pragma HLS unroll
                uint32_t l = msg_strm.read();
                // XXX algorithm assumes big-endian.
                l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8) | ((0x00ff0000UL & l) >> 8) |
                    ((0xff000000UL & l) >> 24);
                b0.M[i] = l;
                _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (32bx16)\n", i, b0.M[i]);
            }
            // send block
            blk_strm.write(b0);
            _XF_SECURITY_PRINT("DEBUG: block sent\n");
            // shift the buffer. high will be zero.
        }

        /// number of bytes not in blocks yet.
        char left = (char)(len & 0x3fULL); // < 64

        _XF_SECURITY_PRINT("DEBUG: sent = %d, left = %d\n", int(len & (-1ULL ^ 0x3fULL)), (int)left);

        if (left == 0) {
            // end at block boundary, start with pad 1.

            /// last block
            SHA256Block b;
#pragma HLS array_partition variable = b.M complete
            // pad 1
            b.M[0] = 0x80000000UL;
            _XF_SECURITY_PRINT("DEBUG: M[0] =\t%08x (pad 1)\n", b.M[0]);
        // zero
        LOOP_SHA256_GEN_PAD_13_ZEROS:
            for (int i = 1; i < 14; ++i) {

```


**Tool Call: Read file `hlstrack2025/security/L1/include/xf_security/sha224_256.hpp` (lines 140-320)**
Status: Completed

```/home/drin/workspace/fpga/vitis/hlstrack2025/security/L1/include/xf_security/sha224_256.hpp
            for (int i = 1; i < 14; ++i) {
#pragma HLS unroll
                b.M[i] = 0;
                _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (zero)\n", i, b.M[i]);
            }
            // append L
            b.M[14] = (uint32_t)(0xffffffffUL & (L >> 32));
            b.M[15] = (uint32_t)(0xffffffffUL & (L));
            _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (append L)\n", 14, b.M[14]);
            _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (append L)\n", 15, b.M[15]);
            // emit
            blk_strm.write(b);
        } else if (left < 56) {
            // can pad 1 and append L.

            // last message block.
            SHA256Block b;
#pragma HLS array_partition variable = b.M complete

        LOOP_SHA256_GEN_COPY_TAIL_AND_ONE:
            for (int i = 0; i < 14; ++i) {
#pragma HLS pipeline
                if (i < (left >> 2)) {
                    uint32_t l = msg_strm.read();
                    // pad 1 byte not in this word
                    // XXX algorithm assumes big-endian.
                    l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8) | ((0x00ff0000UL & l) >> 8) |
                        ((0xff000000UL & l) >> 24);
                    b.M[i] = l;
                    _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (32b)\n", i, b.M[i]);
                } else if (i > (left >> 2)) {
                    // pad 1 not in this word, and no word to read.
                    b.M[i] = 0UL;
                } else {
                    // pad 1 byte in this word
                    uint32_t e = left & 3L;
                    if (e == 0) {
                        b.M[i] = 0x80000000UL;
                    } else if (e == 1) {
                        uint32_t l = msg_strm.read();
                        // XXX algorithm assumes big-endian.
                        l = ((0x000000ffUL & l) << 24);
                        b.M[i] = l | 0x00800000UL;
                    } else if (e == 2) {
                        uint32_t l = msg_strm.read();
                        // XXX algorithm assumes big-endian.
                        l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8);
                        b.M[i] = l | 0x00008000UL;
                    } else {
                        uint32_t l = msg_strm.read();
                        // XXX algorithm assumes big-endian.
                        l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8) | ((0x00ff0000UL & l) >> 8);
                        b.M[i] = l | 0x00000080UL;
                    }
                    _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (pad 1)\n", i, b.M[i]);
                }
            }
            // append L
            b.M[14] = (uint32_t)(0xffffffffUL & (L >> 32));
            b.M[15] = (uint32_t)(0xffffffffUL & (L));
            _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (append L)\n", 14, b.M[14]);
            _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (append L)\n", 15, b.M[15]);

            blk_strm.write(b);
            _XF_SECURITY_PRINT("DEBUG: block sent\n");
        } else {
            // cannot append L.

            /// last but 1 block.
            SHA256Block b;
#pragma HLS array_partition variable = b.M complete
        // copy and pad 1
        LOOP_SHA256_GEN_COPY_TAIL_ONLY:
            for (int i = 0; i < 16; ++i) {
#pragma HLS unroll
                if (i < (left >> 2)) {
                    // pad 1 byte not in this word
                    uint32_t l = msg_strm.read();
                    // XXX algorithm assumes big-endian.
                    l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8) | ((0x00ff0000UL & l) >> 8) |
                        ((0xff000000UL & l) >> 24);
                    b.M[i] = l;
                    _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (32b)\n", i, b.M[i]);
                } else if (i > (left >> 2)) {
                    // pad 1 byte not in this word, and no msg word to read
                    b.M[i] = 0UL;
                } else {
                    // last in this word
                    uint32_t e = left & 3L;
                    if (e == 0) {
                        b.M[i] = 0x80000000UL;
                    } else if (e == 1) {
                        uint32_t l = msg_strm.read();
                        // XXX algorithm assumes big-endian.
                        l = ((0x000000ffUL & l) << 24);
                        b.M[i] = l | 0x00800000UL;
                    } else if (e == 2) {
                        uint32_t l = msg_strm.read();
                        // XXX algorithm assumes big-endian.
                        l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8);
                        b.M[i] = l | 0x00008000UL;
                    } else {
                        uint32_t l = msg_strm.read();
                        // XXX algorithm assumes big-endian.
                        l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8) | ((0x00ff0000UL & l) >> 8);
                        b.M[i] = l | 0x00000080UL;
                    }
                    _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (pad 1)\n", i, b.M[i]);
                }
            }
            blk_strm.write(b);
            _XF_SECURITY_PRINT("DEBUG: block sent\n");

            /// last block.
            SHA256Block b1;
#pragma HLS array_partition variable = b1.M complete
        LOOP_SHA256_GEN_L_ONLY_BLK:
            for (int i = 0; i < 14; ++i) {
#pragma HLS unroll
                b1.M[i] = 0;
                _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (zero)\n", i, b1.M[i]);
            }
            // append L
            b1.M[14] = (uint32_t)(0xffffffffUL & (L >> 32));
            b1.M[15] = (uint32_t)(0xffffffffUL & (L));
            _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (append L)\n", 14, b1.M[14]);
            _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (append L)\n", 15, b1.M[15]);

            blk_strm.write(b1);
            _XF_SECURITY_PRINT("DEBUG: block sent\n");
        }
    } // main loop
    end_nblk_strm.write(true);

} // preProcessing (32-bit ver)

/// @brief Generate 512bit processing blocks for SHA224/SHA256 (pipeline)
/// with const width.
/// The performance goal of this function is to yield a 512b block per cycle.
/// @param msg_strm the message being hashed.
/// @param len_strm the message length in byte.
/// @param end_len_strm that flag to signal end of input.
/// @param blk_strm the 512-bit hash block.
/// @param nblk_strm the number of hash block for this message.
/// @param end_nblk_strm end flag for number of hash block.
inline void preProcessing(hls::stream<ap_uint<64> >& msg_strm,
                          hls::stream<ap_uint<64> >& len_strm,
                          hls::stream<bool>& end_len_strm,
                          hls::stream<SHA256Block>& blk_strm,
                          hls::stream<uint64_t>& nblk_strm,
                          hls::stream<bool>& end_nblk_strm) {
LOOP_SHA256_GENENERATE_MAIN:
    for (bool end_flag = end_len_strm.read(); !end_flag; end_flag = end_len_strm.read()) {
        /// message length in byte.
        uint64_t len = len_strm.read();
        _XF_SECURITY_PRINT("DEBUG: working on a new message of %ld bytes\n", len);
        /// message length in bit.
        uint64_t L = 8 * len;
        /// total number blocks to digest.
        uint64_t blk_num = (len >> 6) + 1 + ((len & 0x3f) > 55);
        // inform digest function.
        nblk_strm.write(blk_num);
        end_nblk_strm.write(false);

    LOOP_SHA256_GEN_FULL_BLKS:
        for (uint64_t j = 0; j < uint64_t(len >> 6); ++j) {
#pragma HLS pipeline II = 16
#pragma HLS loop_tripcount min = 0 max = 1
            /// message block.
            SHA256Block b0;
#pragma HLS array_partition variable = b0.M complete

        // this block will hold 64 byte of message.
        LOOP_SHA256_GEN_ONE_FULL_BLK:
            for (int i = 0; i < 16; i += 2) {
#pragma HLS unroll
                uint64_t ll = msg_strm.read().to_uint64();
                // low
                uint32_t l = ll & 0xffffffffUL;
                // XXX algorithm assumes big-endian.
                l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8) | ((0x00ff0000UL & l) >> 8) |

```


**Tool Call: Read file `hlstrack2025/security/L1/include/xf_security/sha224_256.hpp` (lines 320-640)**
Status: Completed

```/home/drin/workspace/fpga/vitis/hlstrack2025/security/L1/include/xf_security/sha224_256.hpp
                l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8) | ((0x00ff0000UL & l) >> 8) |
                    ((0xff000000UL & l) >> 24);
                b0.M[i] = l;
                _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (64bx8 low)\n", i, b0.M[i]);
                // high
                l = (ll >> 32) & 0xffffffffUL;
                // XXX algorithm assumes big-endian.
                l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8) | ((0x00ff0000UL & l) >> 8) |
                    ((0xff000000UL & l) >> 24);
                b0.M[i + 1] = l;
                _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (64bx8 high)\n", i, b0.M[i]);
            }
            // send block
            blk_strm.write(b0);
            _XF_SECURITY_PRINT("DEBUG: block sent\n");
            // shift the buffer. high will be zero.
        }

        /// number of bytes not in blocks yet.
        char left = (char)(len & 0x3fULL); // < 64

        _XF_SECURITY_PRINT("DEBUG: sent = %d, left = %d\n", int(len & (-1ULL ^ 0x3fULL)), (int)left);

        if (left == 0) {
            // end at block boundary, start with pad 1.

            /// last block
            SHA256Block b;
#pragma HLS array_partition variable = b.M complete
            // pad 1
            b.M[0] = 0x80000000UL;
            _XF_SECURITY_PRINT("DEBUG: M[0] =\t%08x (pad 1)\n", b.M[0]);
        // zero
        LOOP_SHA256_GEN_PAD_13_ZEROS:
            for (int i = 1; i < 14; ++i) {
#pragma HLS unroll
                b.M[i] = 0;
                _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (zero)\n", i, b.M[i]);
            }
            // append L
            b.M[14] = (uint32_t)(0xffffffffUL & (L >> 32));
            b.M[15] = (uint32_t)(0xffffffffUL & (L));
            _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (append L)\n", 14, b.M[14]);
            _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (append L)\n", 15, b.M[15]);
            // emit
            blk_strm.write(b);
            _XF_SECURITY_PRINT("DEBUG: block sent\n");
        } else {
            // can pad 1 and append L.

            // last message block.
            SHA256Block b;
#pragma HLS array_partition variable = b.M complete

        LOOP_SHA256_GEN_COPY_TAIL_PAD_ONE:
            for (int i = 0; i < ((left < 56) ? 7 : 8); ++i) {
#pragma HLS pipeline
                if (i < (left >> 3)) {
                    // pad 1 not in this 64b word, and need to copy
                    uint64_t ll = msg_strm.read().to_uint64();
                    // low
                    uint32_t l = ll & 0xffffffffUL;
                    // XXX algorithm assumes big-endian.
                    l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8) | ((0x00ff0000UL & l) >> 8) |
                        ((0xff000000UL & l) >> 24);
                    b.M[i * 2] = l;
                    _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (64b low)\n", i * 2, b.M[i * 2]);
                    // high
                    l = (ll >> 32) & 0xffffffffUL;
                    // XXX algorithm assumes big-endian.
                    l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8) | ((0x00ff0000UL & l) >> 8) |
                        ((0xff000000UL & l) >> 24);
                    b.M[i * 2 + 1] = l;
                    _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (64b high)\n", i * 2 + 1, b.M[i * 2 + 1]);
                } else if (i > (left >> 3)) {
                    // pad 1 not in this 64b word, and no word to read.
                    b.M[i * 2] = 0UL;
                    _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (zero)\n", i * 2, b.M[i * 2]);
                    b.M[i * 2 + 1] = 0UL;
                    _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (zero)\n", i * 2 + 1, b.M[i * 2 + 1]);
                } else {
                    // pad 1 byte in this 64b word
                    if ((left & 4) == 0) {
                        // left in low 32b
                        uint32_t e = left & 3L;
                        if (e == 0) {
                            b.M[i * 2] = 0x80000000UL;
                        } else if (e == 1) {
                            uint32_t l = msg_strm.read().to_uint64() & 0xffffffffUL;
                            // XXX algorithm assumes big-endian.
                            l = ((0x000000ffUL & l) << 24);
                            b.M[i * 2] = l | 0x00800000UL;
                        } else if (e == 2) {
                            uint32_t l = msg_strm.read().to_uint64() & 0xffffffffUL;
                            // XXX algorithm assumes big-endian.
                            l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8);
                            b.M[i * 2] = l | 0x00008000UL;
                        } else {
                            uint32_t l = msg_strm.read().to_uint64() & 0xffffffffUL;
                            // XXX algorithm assumes big-endian.
                            l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8) | ((0x00ff0000UL & l) >> 8);
                            b.M[i * 2] = l | 0x00000080UL;
                        }
                        _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (pad 1)\n", i * 2, b.M[i * 2]);
                        // high
                        b.M[i * 2 + 1] = 0UL;
                        _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (zero)\n", i * 2 + 1, b.M[i * 2 + 1]);
                    } else {
                        // left in high 32b
                        uint64_t ll = msg_strm.read().to_uint64();
                        // low 32b
                        uint32_t l = ll & 0xffffffffUL;
                        // XXX algorithm assumes big-endian.
                        l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8) | ((0x00ff0000UL & l) >> 8) |
                            ((0xff000000UL & l) >> 24);
                        b.M[i * 2] = l;
                        _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (64b low)\n", i, b.M[i * 2]);
                        // high 32b
                        l = (ll >> 32) & 0xffffffffUL;
                        uint32_t e = left & 3L;
                        if (e == 0) {
                            b.M[i * 2 + 1] = 0x80000000UL;
                        } else if (e == 1) {
                            // XXX algorithm assumes big-endian.
                            l = ((0x000000ffUL & l) << 24);
                            b.M[i * 2 + 1] = l | 0x00800000UL;
                        } else if (e == 2) {
                            // XXX algorithm assumes big-endian.
                            l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8);
                            b.M[i * 2 + 1] = l | 0x00008000UL;
                        } else {
                            // XXX algorithm assumes big-endian.
                            l = ((0x000000ffUL & l) << 24) | ((0x0000ff00UL & l) << 8) | ((0x00ff0000UL & l) >> 8);
                            b.M[i * 2 + 1] = l | 0x00000080UL;
                        }
                        _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (pad 1)\n", i * 2 + 1, b.M[i * 2 + 1]);
                    }
                }
            }

            if (left < 56) {
                // append L
                b.M[14] = (uint32_t)(0xffffffffUL & (L >> 32));
                b.M[15] = (uint32_t)(0xffffffffUL & (L));
                _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (append L)\n", 14, b.M[14]);
                _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (append L)\n", 15, b.M[15]);

                blk_strm.write(b);
                _XF_SECURITY_PRINT("DEBUG: block sent\n");
            } else {
                // send block without L
                blk_strm.write(b);
                _XF_SECURITY_PRINT("DEBUG: block sent\n");

                /// last block.
                SHA256Block b1;
#pragma HLS array_partition variable = b1.M complete
            LOOP_SHA256_GEN_L_ONLY_BLK:
                for (int i = 0; i < 14; ++i) {
#pragma HLS unroll
                    b1.M[i] = 0;
                    _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (zero)\n", i, b1.M[i]);
                }
                // append L
                b1.M[14] = (uint32_t)(0xffffffffUL & (L >> 32));
                b1.M[15] = (uint32_t)(0xffffffffUL & (L));
                _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (append L)\n", 14, b1.M[14]);
                _XF_SECURITY_PRINT("DEBUG: M[%d] =\t%08x (append L)\n", 15, b1.M[15]);

                blk_strm.write(b1);
                _XF_SECURITY_PRINT("DEBUG: block sent\n");
            } // left < 56
        }
    } // main loop
    end_nblk_strm.write(true);

} // preProcessing (64bit ver)

inline void dup_strm(hls::stream<uint64_t>& in_strm,
                     hls::stream<bool>& in_e_strm,
                     hls::stream<uint64_t>& out1_strm,
                     hls::stream<bool>& out1_e_strm,
                     hls::stream<uint64_t>& out2_strm,
                     hls::stream<bool>& out2_e_strm) {
    bool e = in_e_strm.read();

    while (!e) {
#pragma HLS loop_tripcount min = 1 max = 1 avg = 1
#pragma HLS pipeline II = 1
        uint64_t in_r = in_strm.read();

        out1_strm.write(in_r);
        out1_e_strm.write(false);
        out2_strm.write(in_r);
        out2_e_strm.write(false);

        e = in_e_strm.read();
    }

    out1_e_strm.write(true);
    out2_e_strm.write(true);
}

inline void generateMsgSchedule(hls::stream<SHA256Block>& blk_strm,
                                hls::stream<uint64_t>& nblk_strm,
                                hls::stream<bool>& end_nblk_strm,
                                hls::stream<uint32_t>& w_strm) {
    bool e = end_nblk_strm.read();
    while (!e) {
        uint64_t n = nblk_strm.read();
        for (uint64_t i = 0; i < n; ++i) {
#pragma HLS latency max = 65

            SHA256Block blk = blk_strm.read();
#pragma HLS array_partition variable = blk.M complete

            /// message schedule W, from message or
            uint32_t W[16];
#pragma HLS array_partition variable = W complete

        LOOP_SHA256_PREPARE_WT16:
            for (short t = 0; t < 16; ++t) {
#pragma HLS pipeline II = 1
                uint32_t Wt = blk.M[t];
                W[t] = Wt;
                w_strm.write(Wt);
            }

        LOOP_SHA256_PREPARE_WT64:
            for (short t = 16; t < 64; ++t) {
#pragma HLS pipeline II = 1
                // uint32_t Wt = SSIG1(W[t - 2]) + W[t - 7] + SSIG0(W[t - 15]) + W[t - 16];
                // W[t] = Wt;
                uint32_t Wt = SSIG1(W[14]) + W[9] + SSIG0(W[1]) + W[0];
                for (unsigned char j = 0; j < 15; ++j) {
                    W[j] = W[j + 1];
                }
                W[15] = Wt;
                w_strm.write(Wt);
            }
        }
        e = end_nblk_strm.read();
    }
}

inline void sha256_iter(uint32_t& a,
                        uint32_t& b,
                        uint32_t& c,
                        uint32_t& d,
                        uint32_t& e,
                        uint32_t& f,
                        uint32_t& g,
                        uint32_t& h,
                        hls::stream<uint32_t>& w_strm,
                        uint32_t& Kt,
                        const uint32_t K[],
                        short t) {
    uint32_t Wt = w_strm.read();
    /// temporal variables
    uint32_t T1, T2;
    T1 = h + BSIG1(e) + CH(e, f, g) + Kt + Wt;
    T2 = BSIG0(a) + MAJ(a, b, c);

    // update working variables.
    h = g;
    g = f;
    f = e;
    e = d + T1;
    d = c;
    c = b;
    b = a;
    a = T1 + T2;

    _XF_SECURITY_PRINT(
        "DEBUG: Kt=%08x, Wt=%08x\n"
        "\ta=%08x, b=%08x, c=%08x, d=%08x\n"
        "\te=%08x, f=%08x, g=%08x, h=%08x\n",
        Kt, Wt, a, b, c, d, e, f, g, h);

    // for next cycle
    Kt = K[(t + 1) & 63];
}

/// @brief Digest message blocks and emit final hash.
/// @tparam h_width the hash width(type).
/// @param nblk_strm number of message block.
/// @param end_nblk_strm end flag for number of message block.
/// @param hash_strm the hash result stream.
/// @param end_hash_strm end flag for hash result.
template <int h_width>
void sha256Digest(hls::stream<uint64_t>& nblk_strm,
                  hls::stream<bool>& end_nblk_strm,
                  hls::stream<uint32_t>& w_strm,
                  hls::stream<ap_uint<h_width> >& hash_strm,
                  hls::stream<bool>& end_hash_strm) {
    // h_width determine the hash type.
    XF_SECURITY_STATIC_ASSERT((h_width == 256) || (h_width == 224),
                              "Unsupported hash stream width, must be 224 or 256");

    /// constant K
    static const uint32_t K[64] = {
        0x428a2f98UL, 0x71374491UL, 0xb5c0fbcfUL, 0xe9b5dba5UL, 0x3956c25bUL, 0x59f111f1UL, 0x923f82a4UL, 0xab1c5ed5UL,
        0xd807aa98UL, 0x12835b01UL, 0x243185beUL, 0x550c7dc3UL, 0x72be5d74UL, 0x80deb1feUL, 0x9bdc06a7UL, 0xc19bf174UL,
        0xe49b69c1UL, 0xefbe4786UL, 0x0fc19dc6UL, 0x240ca1ccUL, 0x2de92c6fUL, 0x4a7484aaUL, 0x5cb0a9dcUL, 0x76f988daUL,
        0x983e5152UL, 0xa831c66dUL, 0xb00327c8UL, 0xbf597fc7UL, 0xc6e00bf3UL, 0xd5a79147UL, 0x06ca6351UL, 0x14292967UL,
        0x27b70a85UL, 0x2e1b2138UL, 0x4d2c6dfcUL, 0x53380d13UL, 0x650a7354UL, 0x766a0abbUL, 0x81c2c92eUL, 0x92722c85UL,
        0xa2bfe8a1UL, 0xa81a664bUL, 0xc24b8b70UL, 0xc76c51a3UL, 0xd192e819UL, 0xd6990624UL, 0xf40e3585UL, 0x106aa070UL,
        0x19a4c116UL, 0x1e376c08UL, 0x2748774cUL, 0x34b0bcb5UL, 0x391c0cb3UL, 0x4ed8aa4aUL, 0x5b9cca4fUL, 0x682e6ff3UL,
        0x748f82eeUL, 0x78a5636fUL, 0x84c87814UL, 0x8cc70208UL, 0x90befffaUL, 0xa4506cebUL, 0xbef9a3f7UL, 0xc67178f2UL};
#pragma HLS array_partition variable = K complete

LOOP_SHA256_DIGEST_MAIN:
    for (bool end_flag = end_nblk_strm.read(); !end_flag; end_flag = end_nblk_strm.read()) {
        /// total number blocks to digest.
        uint64_t blk_num = nblk_strm.read();
        // _XF_SECURITY_PRINT("expect %ld blocks.\n", blk_num);

        /// internal states
        uint32_t H[8];
#pragma HLS array_partition variable = H complete


```


**Tool Call: Read file `hlstrack2025/security/L1/include/xf_security/sha224_256.hpp` (lines 640-960)**
Status: Completed

```/home/drin/workspace/fpga/vitis/hlstrack2025/security/L1/include/xf_security/sha224_256.hpp

        // initialize
        if (h_width == 224) {
            H[0] = 0xc1059ed8UL;
            H[1] = 0x367cd507UL;
            H[2] = 0x3070dd17UL;
            H[3] = 0xf70e5939UL;
            H[4] = 0xffc00b31UL;
            H[5] = 0x68581511UL;
            H[6] = 0x64f98fa7UL;
            H[7] = 0xbefa4fa4UL;
        } else {
            H[0] = 0x6a09e667UL;
            H[1] = 0xbb67ae85UL;
            H[2] = 0x3c6ef372UL;
            H[3] = 0xa54ff53aUL;
            H[4] = 0x510e527fUL;
            H[5] = 0x9b05688cUL;
            H[6] = 0x1f83d9abUL;
            H[7] = 0x5be0cd19UL;
        }

    LOOP_SHA256_DIGEST_NBLK:
        for (uint64_t n = 0; n < blk_num; ++n) {
#pragma HLS loop_tripcount min = 1 max = 1
#pragma HLS latency max = 65

            /// working variables.
            uint32_t a, b, c, d, e, f, g, h;

            // loading working variables.
            a = H[0];
            b = H[1];
            c = H[2];
            d = H[3];
            e = H[4];
            f = H[5];
            g = H[6];
            h = H[7];

            uint32_t Kt = K[0];
        LOOP_SHA256_UPDATE_64_ROUNDS:
            for (short t = 0; t < 64; ++t) {
#pragma HLS pipeline II = 1
                sha256_iter(a, b, c, d, e, f, g, h, w_strm, Kt, K, t);
            } // 64 round loop

            // store working variables to internal states.
            H[0] = a + H[0];
            H[1] = b + H[1];
            H[2] = c + H[2];
            H[3] = d + H[3];
            H[4] = e + H[4];
            H[5] = f + H[5];
            H[6] = g + H[6];
            H[7] = h + H[7];
        } // block loop

        // Emit digest
        if (h_width == 224) {
            ap_uint<224> w224;
        LOOP_SHA256_EMIT_H224:
            for (short i = 0; i < sha256_digest_config<true>::numH; ++i) {
#pragma HLS unroll
                uint32_t l = H[i];
                // XXX shift algorithm's big endian to HLS's little endian.
                uint8_t t0 = (((l) >> 24) & 0xff);
                uint8_t t1 = (((l) >> 16) & 0xff);
                uint8_t t2 = (((l) >> 8) & 0xff);
                uint8_t t3 = (((l)) & 0xff);
                uint32_t l_little =
                    ((uint32_t)t0) | (((uint32_t)t1) << 8) | (((uint32_t)t2) << 16) | (((uint32_t)t3) << 24);
                w224.range(32 * i + 31, 32 * i) = l_little;
            }
            hash_strm.write(w224);
        } else {
            ap_uint<256> w256;
        LOOP_SHA256_EMIT_H256:
            for (short i = 0; i < sha256_digest_config<false>::numH; ++i) {
#pragma HLS unroll
                uint32_t l = H[i];
                // XXX shift algorithm's big endian to HLS's little endian.
                uint8_t t0 = (((l) >> 24) & 0xff);
                uint8_t t1 = (((l) >> 16) & 0xff);
                uint8_t t2 = (((l) >> 8) & 0xff);
                uint8_t t3 = (((l)) & 0xff);
                uint32_t l_little =
                    ((uint32_t)t0) | (((uint32_t)t1) << 8) | (((uint32_t)t2) << 16) | (((uint32_t)t3) << 24);
                w256.range(32 * i + 31, 32 * i) = l_little;
            }
            hash_strm.write(w256);
        }
        end_hash_strm.write(false);
    } // main loop
    end_hash_strm.write(true);

} // sha256Digest (pipelined override)

/// @brief SHA-256/224 implementation top overload for ap_uint input.
/// @tparam m_width the input message stream width.
/// @tparam h_width the output hash stream width.
/// @param msg_strm the message being hashed.
/// @param len_strm the length message being hashed in byte.
/// @param end_len_strm end flag stream of input, one per message.
/// @param hash_strm the result.
/// @param end_hash_strm end falg stream of output, one per hash.
template <int m_width, int h_width>
inline void sha256_top(hls::stream<ap_uint<m_width> >& msg_strm,
                       hls::stream<ap_uint<64> >& len_strm,
                       hls::stream<bool>& end_len_strm,
                       hls::stream<ap_uint<h_width> >& hash_strm,
                       hls::stream<bool>& end_hash_strm) {
#pragma HLS DATAFLOW
    /// 512-bit Block stream
    hls::stream<SHA256Block> blk_strm("blk_strm");
#pragma HLS STREAM variable = blk_strm depth = 32
#pragma HLS RESOURCE variable = blk_strm core = FIFO_LUTRAM

    /// number of Blocks, send per msg
    hls::stream<uint64_t> nblk_strm("nblk_strm");
#pragma HLS STREAM variable = nblk_strm depth = 32
#pragma HLS RESOURCE variable = nblk_strm core = FIFO_LUTRAM
    hls::stream<uint64_t> nblk_strm1("nblk_strm1");
#pragma HLS STREAM variable = nblk_strm1 depth = 32
#pragma HLS RESOURCE variable = nblk_strm1 core = FIFO_LUTRAM
    hls::stream<uint64_t> nblk_strm2("nblk_strm2");
#pragma HLS STREAM variable = nblk_strm2 depth = 32
#pragma HLS RESOURCE variable = nblk_strm2 core = FIFO_LUTRAM

    /// end flag, send per msg.
    hls::stream<bool> end_nblk_strm("end_nblk_strm");
#pragma HLS STREAM variable = end_nblk_strm depth = 32
#pragma HLS RESOURCE variable = end_nblk_strm core = FIFO_LUTRAM
    hls::stream<bool> end_nblk_strm1("end_nblk_strm1");
#pragma HLS STREAM variable = end_nblk_strm1 depth = 32
#pragma HLS RESOURCE variable = end_nblk_strm1 core = FIFO_LUTRAM
    hls::stream<bool> end_nblk_strm2("end_nblk_strm2");
#pragma HLS STREAM variable = end_nblk_strm2 depth = 32
#pragma HLS RESOURCE variable = end_nblk_strm2 core = FIFO_LUTRAM

    /// W, 64 items for each block
    hls::stream<uint32_t> w_strm("w_strm");
#pragma HLS STREAM variable = w_strm depth = 32
#pragma HLS RESOURCE variable = w_strm core = FIFO_LUTRAM

    // Generate block stream
    preProcessing(msg_strm, len_strm, end_len_strm, //
                  blk_strm, nblk_strm, end_nblk_strm);

    // Duplicate number of block stream and its end flag stream
    dup_strm(nblk_strm, end_nblk_strm, nblk_strm1, end_nblk_strm1, nblk_strm2, end_nblk_strm2);

    // Generate the message schedule in stream
    generateMsgSchedule(blk_strm, nblk_strm1, end_nblk_strm1, w_strm);

    // Digest block stream, and write hash stream.
    // fully pipelined version will calculate SHA-224 if hash_strm width is 224.
    sha256Digest(nblk_strm2, end_nblk_strm2, w_strm, //
                 hash_strm, end_hash_strm);
} // sha256_top
} // namespace internal

/// @brief SHA-224 algorithm with ap_uint stream input and output.
/// @tparam m_width the input message stream width, currently only 32 allowed.
/// @param msg_strm the message being hashed.
/// @param len_strm the length message being hashed.
/// @param end_len_strm the flag for end of message length input.
/// @param hash_strm the result.
/// @param end_hash_strm the flag for end of hash output.
template <int m_width>
void sha224(hls::stream<ap_uint<m_width> >& msg_strm,      // in
            hls::stream<ap_uint<64> >& len_strm,           // in
            hls::stream<bool>& end_len_strm,               // in
            hls::stream<ap_uint<224> >& hash_strm,         // out
            hls::stream<bool>& end_hash_strm) {            // out
    internal::sha256_top(msg_strm, len_strm, end_len_strm, // in
                         hash_strm, end_hash_strm);        // out
}

/// @brief SHA-256 algorithm with ap_uint stream input and output.
/// @tparam m_width the input message stream width, currently only 32 allowed.
/// @param msg_strm the message being hashed.
/// @param len_strm the length message being hashed.
/// @param end_len_strm the flag for end of message length input.
/// @param hash_strm the result.
/// @param end_hash_strm the flag for end of hash output.
template <int m_width>
void sha256(hls::stream<ap_uint<m_width> >& msg_strm,      // in
            hls::stream<ap_uint<64> >& len_strm,           // in
            hls::stream<bool>& end_len_strm,               // in
            hls::stream<ap_uint<256> >& hash_strm,         // out
            hls::stream<bool>& end_hash_strm) {            // out
    internal::sha256_top(msg_strm, len_strm, end_len_strm, // in
                         hash_strm, end_hash_strm);        // out
}
} // namespace security
} // namespace xf

// Clean up macros.
#undef ROTR
#undef ROTL
#undef SHR
#undef CH
#undef MAJ
#undef BSIG0
#undef BSIG1
#undef SSIG0
#undef SSIG1

#undef _XF_SECURITY_PRINT
#undef _XF_SECURITY_VOID_CAST

#endif // XF_SECURITY_SHA2_H
// -*- cpp -*-
// vim: ts=8:sw=2:sts=2:ft=cpp

```


## Assistant

Here’s a concise, engineer-focused walkthrough of the SHA-224/256 algorithm and how this header implements it for HLS.

What it implements
- SHA-256 core that also supports SHA-224 by selecting a different initial vector and emitting only the first 224 bits.
- Fully streaming, pipelined architecture (HLS DATAFLOW) that:
  1) Pre-processes input into 512-bit blocks with SHA-2 padding
  2) Generates the message schedule W[0..63]
  3) Runs the 64 compression rounds per block
  4) Emits the final digest in the requested width

Key data structures and macros
- struct SHA256Block: 16 x 32-bit words that represent one 512-bit block.
- Bitwise/boolean macros: ROTR, ROTL, SHR, CH, MAJ, BSIG0/1, SSIG0/1 (the standard SHA-2 functions).
- sha256_digest_config<true/false>: compile-time selection of how many 32-bit words to emit (7 for SHA-224, 8 for SHA-256).

Top-level API
- xf::security::sha224<m_width>(msg_strm, len_strm, end_len_strm, hash_strm, end_hash_strm)
- xf::security::sha256<m_width>(msg_strm, len_strm, end_len_strm, hash_strm, end_hash_strm)
- These call internal::sha256_top<m_width, h_width>(), which wires the pipeline stages together under HLS DATAFLOW.

Pipeline stages

1) Pre-processing (padding to 512-bit blocks)
- Overloads:
  - preProcessing(hls::stream<ap_uint<32>>& ...)
  - preProcessing(hls::stream<ap_uint<64>>& ...)
- Input:
  - msg_strm: message words (32- or 64-bit)
  - len_strm: message length in bytes (ap_uint<64>)
  - end_len_strm: boolean stream that frames messages (true marks the end)
- Output:
  - blk_strm: stream of SHA256Block (16 x 32-bit words each)
  - nblk_strm: number of blocks for this message
  - end_nblk_strm: boolean end flag stream associated with nblk_strm
- Function:
  - Computes L = 8 * len (bits), blk_num = (len >> 6) + 1 + ((len & 0x3f) > 55)
  - Reads full 512-bit blocks from msg_strm, performs big-endian conversion per 32-bit word
  - Handles padding cases:
    - left == 0: emit a block of [0x80000000, 13 zeros, high(L), low(L)]
    - left < 56: emit a block that copies tail bytes and includes the ‘1’ bit, pad zeros to M[13], then append L
    - else: emit one block with tail+‘1’ and zeros, then a second block that’s zeros with L in M[14..15]
  - Endianness: The algorithm expects big-endian words; it byte-swaps the incoming 32-bit halves accordingly.

2) Stream duplication (control-plane)
- dup_strm(nblk_strm, end_nblk_strm, nblk_strm1, end_nblk_strm1, nblk_strm2, end_nblk_strm2)
- The block-count stream is needed by both the message scheduler and the hasher, so it’s forked here.

3) Message schedule generation
- generateMsgSchedule(blk_strm, nblk_strm1, end_nblk_strm1, w_strm)
- For each block:
  - W[0..15] = the block words (already big-endian corrected)
  - W[16..63] computed with SSIG1(W[t-2]) + W[t-7] + SSIG0(W[t-15]) + W[t-16]
  - Uses a 16-word sliding window optimization:
    - Implements “W[t] = SSIG1(W[14]) + W[9] + SSIG0(W[1]) + W[0]” while shifting the window each cycle
- Emits W[t] as a stream with II=1 (one schedule word per cycle).

4) Compression (64 rounds) and digest emission
- sha256Digest<h_width>(nblk_strm2, end_nblk_strm2, w_strm, hash_strm, end_hash_strm)
- Initializes the chaining variables H[0..7] to:
  - SHA-256 IV when h_width == 256
  - SHA-224 IV when h_width == 224
- For each 512-bit block:
  - Loads a..h from H
  - For t=0..63: reads W[t] from w_strm and calls sha256_iter()
    - sha256_iter() computes T1 = h + BSIG1(e) + CH(e,f,g) + K[t] + W[t], T2 = BSIG0(a) + MAJ(a,b,c), updates a..h
    - K[t]: The code carries Kt scalar and updates it as K[(t+1)&63] for efficient pipelining
  - Adds the working variables back into H (H[i] += working[i])
- Emit final digest:
  - For SHA-224: writes 7 words; for SHA-256: 8 words
  - Performs a byte-swap on each 32-bit word before writing to the output stream (converts from the algorithm’s big-endian to the HLS stream’s little-endian order)

HLS performance considerations
- DATAFLOW connects stages so they can operate concurrently.
- Scheduling is II=1 for both message-schedule and round functions, so the core compression achieves one round per cycle (64 cycles per block).
- Block generation loops show II=16 for reading the 16 words of a block (sufficient to keep the core fed because the compression itself needs 64 cycles per block).
- Arrays used in tight loops are fully partitioned to enable parallel access:
  - blk.M, W, H, and the K table
- FIFOs (LUTRAM) with depth=32 buffer between stages to absorb burstiness.

Endianness and I/O framing
- Input: Each 32-bit word read from msg_strm is byte-swapped into big-endian as required by SHA-2. The 64-bit path does the equivalent per 32-bit half.
- Length L is written in big-endian as two 32-bit words M[14], M[15] per FIPS 180-4.
- Output: Each 32-bit digest word is byte-swapped back to “little-endian” for the stream consumer.
- Multiple messages are supported sequentially:
  - end_len_strm frames input messages
  - end_nblk_strm frames block counts
  - end_hash_strm frames output hashes

Correctness highlights
- K constants and IVs match FIPS 180-4.
- Padding logic covers the three standard cases (block boundary, room-for-length, length-in-next-block).
- Message schedule uses the correct SSIG functions.
- SHA-224 is realized by using SHA-224 IV and emitting 224 bits after processing; the compression is identical to SHA-256.

How to use it
- Choose an input width that matches an available preProcessing overload:
  - m_width == 32 or m_width == 64
- Drive msg_strm with message words, len_strm with byte length, and end_len_strm for message framing.
- Read hash_strm for the resulting 224- or 256-bit digest and use end_hash_strm to detect completion.

Notable implementation details
- The code uses a sliding 16-word window for W to keep storage small and to maintain II=1.
- The K schedule is delivered via a scalar variable Kt advanced each cycle, avoiding an indexed array read on the critical path.
- Debug printing can be enabled by setting _DEBUG; it’s compiled-out under synthesis.

Overall flow summary
1) preProcessing: turn an arbitrary-length message into padded 512-bit blocks, publish block count
2) generateMsgSchedule: stream W[0..63] per block
3) sha256Digest: process 64 rounds, update H, and emit the final digest (224 or 256 bits)
4) DATAFLOW: all of the above run concurrently with FIFO decoupling for throughput

This design cleanly separates control (block counts and end flags) from data (blocks and W values), enabling a high-throughput streaming SHA-2 engine suitable for FPGA HLS.

## User

which process have the space to optimize for lower latency

## Assistant

Short answer: The biggest latency win is in the 64-round compression loop; secondary wins come from starting rounds earlier (don’t wait for a whole 512-bit block) and using a wider input. Everything else is marginal.

Where you have room to reduce latency, in order of impact

1) 64-round compression (sha256Digest)
- Why: Each block currently takes 64 cycles for the round function (II=1, one round/cycle). This dominates per-block latency.
- How to optimize:
  - Partial round unrolling: compute 2 or 4 rounds per cycle and pipeline across those unrolled stages. This reduces cycles per block to 32 or 16 respectively.
  - In practice: you’ll need to provide 2 or 4 W values and K constants per cycle. The cleanest approach is to merge message schedule generation into the compression loop and compute W(t+1), W(t+2), … combinationally for the additional rounds in the same cycle. This avoids changing the external stream width.
- Trade-offs: Area increases roughly linearly with unroll factor; timing gets tighter due to longer combinational paths inside a cycle.

2) Start the first round earlier by fusing stages
- Why: generateMsgSchedule currently waits for a full SHA256Block (16 words) from preProcessing before it emits W[0]. That adds up to ~16 extra cycles (for 32-bit input) of startup latency on the first block.
- How to optimize:
  - Stream M[0..15] directly from preProcessing to the scheduler/compressor without materializing an entire SHA256Block. Start emitting W[0] as soon as M[0] is available, and start the first compression round immediately.
  - Alternatively, restructure generateMsgSchedule to accept a word stream for M[i] instead of a block object so it can begin W generation earlier.
- Impact: Saves up to ~16 cycles for m_width=32 or ~8 cycles for m_width=64 on the first block of each message.

3) Use a wider input width for pre-processing
- Why: The time to assemble the first 512-bit block is 512 / m_width cycles. With m_width=32 it’s 16 cycles; with m_width=64 it’s 8 cycles.
- How to optimize:
  - If you control the upstream interface, prefer the 64-bit preProcessing overload (already implemented here). If feasible in your system, go even wider with a new overload (e.g., 128/256 bits) to reduce block assembly latency further.
- Impact: Improves first-block latency; throughput is still dominated by the 64-round loop unless you also unroll rounds.

4) Collapse or tighten the inter-stage FIFOs
- Why: Each stream FIFO boundary can add 1–2 cycles of latency (and may constrain fmax).
- How to optimize:
  - Inline generateMsgSchedule and sha256Digest into a single function or replace the FIFO with hls::stream depths of 1 and use ap_ctrl_none style handshakes to minimize buffering.
  - For pure latency targets on short messages, an integrated “schedule+rounds” core often beats a decoupled DATAFLOW design.
- Impact: Small but measurable cycle savings and potentially higher clock frequency.

5) Message schedule micro-architecture
- Why: The current W ring uses a 16-word sliding window with a 15-element shift per cycle. It meets II=1 but can constrain fmax.
- How to optimize:
  - Replace the shift with a modulo-indexed ring buffer (no multi-word shift) to reduce routing and improve timing.
  - Precompute SSIG0/SSIG1 in a balanced pipeline stage if you push frequency higher, which shortens cycle time (reduces time latency even if cycle count is the same).
- Impact: Improves achievable clock frequency more than cycle count.

6) Minor items
- Endianness swaps are already simple combinational ops; gains are negligible.
- dup_strm is control-plane only; no meaningful latency to shave.

Rule-of-thumb latency breakdown for a short single-block message (as implemented)
- With m_width=32: ~16 cycles to build the first block + ~64 cycles for rounds + a couple of cycles of handshakes/emission ≈ ~82 cycles.
- With improvements:
  - Early-start W0 + m_width=64: save ~16 + ~8 cycles ≈ ~24 cycles.
  - 2-round unroll: halve the 64 to ~32 cycles.
  - Combined: ~8 (block) + 32 (rounds) + small overhead ≈ ~42 cycles.
  - 4-round unroll: rounds ~16 cycles; total can be ≈ ~26–30 cycles depending on integration.

Recommended path
- If you want the biggest latency improvement per engineering hour: implement 2-round unroll inside sha256Digest and compute W(t+1) locally in the same cycle. Then fuse schedule+rounds so you can start as soon as M[0] arrives.
- If you can change the interface: switch to the 64-bit input overload (already available) to halve the block assembly time immediately.
- If you need maximum performance and can spend more area: go to 4-round unroll with careful pipelining and a modulo-indexed W buffer.

I can sketch the structural changes for a 2-round unrolled, fused scheduler+compressor if you want to pursue that design.

## User

for the 1st optimization, how to process it in detail. show me the draft snippet code.

## Assistant

Great target. Here’s a concrete way to implement the first optimization (partial round unrolling by 2x), with details and a draft snippet you can drop in.

What you’ll change
- Replace the separate “message schedule” stage with an on-the-fly 16-word ring buffer so you can produce W[t] and W[t+1] in the same cycle.
- Compute 2 rounds per loop iteration with II=1, reducing block latency from 64 cycles to 32 cycles.
- Keep preProcessing as-is (still emits big-endian-corrected 16-word blocks).
- Bypass generateMsgSchedule and call this fused digest directly from sha256_top.

Integration steps
1) Add the unrolled, fused digest function below.
2) In sha256_top, remove dup_strm + generateMsgSchedule and instead call sha256Digest_unroll2(...) with blk_strm and nblk_strm/end_nblk_strm from preProcessing.
3) Keep the rest (preProcessing and output formatting) unchanged.

Draft code (2-round unrolled, fused scheduler+compressor)
```/dev/null/sha256_unroll2_draft.hpp#L1-260
#pragma once
#include <ap_int.h>
#include <hls_stream.h>

namespace xf {
namespace security {
namespace internal {

#define ROTR(n, x) ((x >> n) | (x << (32 - n)))
#define SHR(n, x) (x >> n)
#define CH(x, y, z) ((x & y) ^ ((~x) & z))
#define MAJ(x, y, z) ((x & y) ^ (x & z) ^ (y & z))
#define BSIG0(x) (ROTR(2, x) ^ ROTR(13, x) ^ ROTR(22, x))
#define BSIG1(x) (ROTR(6, x) ^ ROTR(11, x) ^ ROTR(25, x))
#define SSIG0(x) (ROTR(7, x) ^ ROTR(18, x) ^ SHR(3, x))
#define SSIG1(x) (ROTR(17, x) ^ ROTR(19, x) ^ SHR(10, x))

// One SHA-256 round, inlined so we can call twice per loop iteration.
static inline void sha256_round_once(uint32_t Wt,
                                     uint32_t Kt,
                                     uint32_t& a, uint32_t& b, uint32_t& c, uint32_t& d,
                                     uint32_t& e, uint32_t& f, uint32_t& g, uint32_t& h) {
#pragma HLS inline
    uint32_t T1 = h + BSIG1(e) + CH(e, f, g) + Kt + Wt;
    uint32_t T2 = BSIG0(a) + MAJ(a, b, c);

    h = g;
    g = f;
    f = e;
    e = d + T1;
    d = c;
    c = b;
    b = a;
    a = T1 + T2;
}

// Compute next W using a 16-word ring with head index `idx` (oldest at W[idx]).
static inline uint32_t nextW(uint32_t W[16], ap_uint<4> idx) {
#pragma HLS inline
    uint32_t w0  = W[(idx + 0)  & 15];
    uint32_t w1  = W[(idx + 1)  & 15];
    uint32_t w9  = W[(idx + 9)  & 15];
    uint32_t w14 = W[(idx + 14) & 15];
    return SSIG1(w14) + w9 + SSIG0(w1) + w0;
}

// Fused scheduler + compressor, unrolled by 2 rounds per cycle (II=1).
template <int h_width>
void sha256Digest_unroll2(hls::stream<uint64_t>& nblk_strm,         // in
                          hls::stream<bool>& end_nblk_strm,         // in
                          hls::stream<SHA256Block>& blk_strm,       // in (from preProcessing)
                          hls::stream<ap_uint<h_width> >& hash_strm,// out
                          hls::stream<bool>& end_hash_strm) {       // out
#pragma HLS INLINE off

    // Sanity: Only 224 or 256-bit supported
    // (Use your existing XF_SECURITY_STATIC_ASSERT if you include the header context)

    static const uint32_t K[64] = {
        0x428a2f98UL, 0x71374491UL, 0xb5c0fbcfUL, 0xe9b5dba5UL, 0x3956c25bUL, 0x59f111f1UL, 0x923f82a4UL, 0xab1c5ed5UL,
        0xd807aa98UL, 0x12835b01UL, 0x243185beUL, 0x550c7dc3UL, 0x72be5d74UL, 0x80deb1feUL, 0x9bdc06a7UL, 0xc19bf174UL,
        0xe49b69c1UL, 0xefbe4786UL, 0x0fc19dc6UL, 0x240ca1ccUL, 0x2de92c6fUL, 0x4a7484aaUL, 0x5cb0a9dcUL, 0x76f988daUL,
        0x983e5152UL, 0xa831c66dUL, 0xb00327c8UL, 0xbf597fc7UL, 0xc6e00bf3UL, 0xd5a79147UL, 0x06ca6351UL, 0x14292967UL,
        0x27b70a85UL, 0x2e1b2138UL, 0x4d2c6dfcUL, 0x53380d13UL, 0x650a7354UL, 0x766a0abbUL, 0x81c2c92eUL, 0x92722c85UL,
        0xa2bfe8a1UL, 0xa81a664bUL, 0xc24b8b70UL, 0xc76c51a3UL, 0xd192e819UL, 0xd6990624UL, 0xf40e3585UL, 0x106aa070UL,
        0x19a4c116UL, 0x1e376c08UL, 0x2748774cUL, 0x34b0bcb5UL, 0x391c0cb3UL, 0x4ed8aa4aUL, 0x5b9cca4fUL, 0x682e6ff3UL,
        0x748f82eeUL, 0x78a5636fUL, 0x84c87814UL, 0x8cc70208UL, 0x90befffaUL, 0xa4506cebUL, 0xbef9a3f7UL, 0xc67178f2UL};
#pragma HLS array_partition variable = K complete

    bool e = end_nblk_strm.read();
    while (!e) {
        uint64_t blk_num = nblk_strm.read();

        // Chaining state
        uint32_t H[8];
#pragma HLS array_partition variable = H complete

        if (h_width == 224) {
            H[0] = 0xc1059ed8UL; H[1] = 0x367cd507UL; H[2] = 0x3070dd17UL; H[3] = 0xf70e5939UL;
            H[4] = 0xffc00b31UL; H[5] = 0x68581511UL; H[6] = 0x64f98fa7UL; H[7] = 0xbefa4fa4UL;
        } else {
            H[0] = 0x6a09e667UL; H[1] = 0xbb67ae85UL; H[2] = 0x3c6ef372UL; H[3] = 0xa54ff53aUL;
            H[4] = 0x510e527fUL; H[5] = 0x9b05688cUL; H[6] = 0x1f83d9abUL; H[7] = 0x5be0cd19UL;
        }

        // Process all blocks
        for (uint64_t n = 0; n < blk_num; ++n) {
#pragma HLS loop_tripcount min = 1 max = 1
#pragma HLS latency max = 33

            SHA256Block blk = blk_strm.read();
#pragma HLS array_partition variable = blk.M complete

            // Working variables
            uint32_t a = H[0], b = H[1], c = H[2], d = H[3];
            uint32_t e_ = H[4], f = H[5], g = H[6], h = H[7];

            // 16-word message schedule ring buffer (W0..W15)
            uint32_t W[16];
#pragma HLS array_partition variable = W complete

            // Load initial 16 words (already big-endian corrected by preProcessing)
            for (ap_uint<4> i = 0; i < 16; ++i) {
#pragma HLS unroll
                W[i] = blk.M[i];
            }
            ap_uint<4> idx = 0; // points to oldest W

            // Two rounds per iteration, II=1
            for (ap_uint<7> tt = 0; tt < 64; tt += 2) {
#pragma HLS pipeline II = 1

                // Wt0
                uint32_t Wt0 = (tt < 16)
                                   ? W[(idx + 0) & 15]
                                   : nextW(W, idx);
                if (tt >= 16) {
                    W[idx] = Wt0;
                    idx = (idx + 1) & 15;
                }

                // Round t
                sha256_round_once(Wt0, K[tt],
                                  a, b, c, d,
                                  e_, f, g, h);

                // Wt1
                uint32_t Wt1 = (tt + 1 < 16)
                                   ? W[(idx + 0) & 15]
                                   : nextW(W, idx);
                if (tt + 1 >= 16) {
                    W[idx] = Wt1;
                    idx = (idx + 1) & 15;
                }

                // Round t+1
                sha256_round_once(Wt1, K[tt + 1],
                                  a, b, c, d,
                                  e_, f, g, h);
            }

            // Accumulate
            H[0] += a; H[1] += b; H[2] += c; H[3] += d;
            H[4] += e_; H[5] += f; H[6] += g; H[7] += h;
        }

        // Emit digest (byte-swap to little-endian stream order)
        if (h_width == 224) {
            ap_uint<224> w224 = 0;
            for (ap_uint<4> i = 0; i < 7; ++i) {
#pragma HLS unroll
                uint32_t l = H[i];
                uint32_t l_little = ((l >> 24) & 0xff) | ((l >> 8) & 0xff00) |
                                    ((l & 0xff00) << 8) | ((l & 0xff) << 24);
                w224.range(32 * i + 31, 32 * i) = l_little;
            }
            hash_strm.write(w224);
        } else {
            ap_uint<256> w256 = 0;
            for (ap_uint<4> i = 0; i < 8; ++i) {
#pragma HLS unroll
                uint32_t l = H[i];
                uint32_t l_little = ((l >> 24) & 0xff) | ((l >> 8) & 0xff00) |
                                    ((l & 0xff00) << 8) | ((l & 0xff) << 24);
                w256.range(32 * i + 31, 32 * i) = l_little;
            }
            hash_strm.write(w256);
        }
        end_hash_strm.write(false);

        e = end_nblk_strm.read();
    }
    end_hash_strm.write(true);
}

#undef ROTR
#undef SHR
#undef CH
#undef MAJ
#undef BSIG0
#undef BSIG1
#undef SSIG0
#undef SSIG1

} // namespace internal
} // namespace security
} // namespace xf
```

How to wire it in sha256_top
- Replace the message-schedule and original digest with this fused, unrolled digest. The minimal change is:

- remove:
  - dup_strm(nblk_strm, ...)
  - generateMsgSchedule(blk_strm, ...)
  - sha256Digest(..., w_strm, ...)

- add:
  - internal::sha256Digest_unroll2<h_width>(nblk_strm, end_nblk_strm, blk_strm, hash_strm, end_hash_strm);

Notes and tuning tips
- The two-round combinational path is heavier. If timing is tight, consider:
  - Adding a small register slice between the two round calls (split the loop body in two functions with HLS INLINE off to encourage retiming).
  - Lowering clock period constraint or using II=1 with “latency max” hints on the loop as shown.
- If you need even lower cycles per block, extend the same pattern to 4 rounds per iteration. You’ll compute Wt2/Wt3 similarly by advancing the ring in temporaries before committing, then run 4 sha256_round_once calls back-to-back.

If you want, I can show the exact patch to sha256_top in your file to integrate this function.

## User

try to do not modify the original structure, just modify the for-loop

## Assistant

You can change only the 64-round loop in `sha256Digest` to execute two rounds per iteration. This keeps the overall structure intact (same streams, same functions), and is the minimal edit. Note: this change alone won’t reduce end-to-end latency unless the message-schedule stage can deliver two W words per cycle; otherwise the loop will stall on the second read and overall cycles won’t go down. Still, here’s the precise “loop-only” draft:

```/dev/null/sha256_for_loop_unroll2_draft.cpp#L1-30
// Replace the original 64-iteration loop:
//
// for (short t = 0; t < 64; ++t) {
// #pragma HLS pipeline II = 1
//     sha256_iter(a, b, c, d, e, f, g, h, w_strm, Kt, K, t);
// }
//
// With this 2-rounds-per-iteration version:
for (short t = 0; t < 64; t += 2) {
#pragma HLS pipeline II = 1
    // Round t (reads one W from w_strm, uses Kt = K[t], then advances Kt -> K[t+1])
    sha256_iter(a, b, c, d, e, f, g, h, w_strm, Kt, K, t);

    // Round t+1 (reads another W from w_strm, uses Kt = K[t+1], then advances Kt -> K[t+2])
    sha256_iter(a, b, c, d, e, f, g, h, w_strm, Kt, K, t + 1);
}
// After the loop, Kt == K[(64) & 63] = K[0], ready for next block
```

Why this works and caveats
- It preserves the function’s interface and streaming structure. No added buffers, no changes to `generateMsgSchedule`, no changes to `sha256_iter`.
- K handling is correct because `sha256_iter` advances `Kt` each call, so across the pair you go from K[t] -> K[t+1] -> K[t+2].
- Real latency reduction requires the producer (`generateMsgSchedule`) to supply 2 W words per cycle; otherwise the second `sha256_iter` call will stall on `w_strm.read()`. If you can’t change the producer, this loop will still function (it will self-stall on the second read), but end-to-end cycles per block won’t improve.

If you later decide you can compute W(t+1) locally inside this loop (so you only read one W per iteration), I can show a variation that maintains a 16-word ring buffer for W and computes the second round’s W on the fly, while still draining the stream to avoid backpressure.
