# module csa_wrapper
# #(
#     parameter N     = 64,
#     parameter DSP_W = 24,
#     parameter DSP_H = 17,
#     parameter B     = 12,
#     parameter CSA   = 6
    
# )(
#     input           clk,
#     input   [N-1:0] csa_in [B-1:0],
#     output  [N-1:0] csa_out
# );

import math


B     = 13
CSA   = 6

CSA_IN  = CSA

CSA_OUT = int(math.log2(CSA_IN)) + 1


print("BLOCKS :", B)
print("CSA_IN :", CSA_IN)
print("CSA_OUT:", CSA_OUT)
print()

NUM_STAGES  = 0
INPUT_SIZE  = B
OUTPUT_SIZE = B
while INPUT_SIZE > 6:
    print("-------------------------------")
    
    B_MOD_CSA  = int(INPUT_SIZE % CSA_IN)
    B_DIV_CSA  = int(INPUT_SIZE / CSA_IN)

    # print(f"> [{NUM_STAGES}] INPUT_SIZE: {INPUT_SIZE}, B_MOD_CSA: {B_MOD_CSA}, B_DIV_CSA:{B_DIV_CSA}")

    if B_MOD_CSA > 3:
        # print("-> PADDING I/O")
        B_MOD_CSA = 0
        B_DIV_CSA = B_DIV_CSA + 1
        INPUT_SIZE = B_DIV_CSA * CSA_IN

    # print(f"----> INPUT_SIZE: {INPUT_SIZE}, B_MOD_CSA: {B_MOD_CSA}, B_DIV_CSA:{B_DIV_CSA}")

    OUTPUT_SIZE = (B_DIV_CSA * CSA_OUT)

    # print(f"--> INPUT_SIZE: {INPUT_SIZE} -> OUTPUT_SIZE: {OUTPUT_SIZE}")

    for _ in range(B_DIV_CSA):
        print(f"-> CSA6({CSA_IN}, {CSA_OUT})")

    if B_MOD_CSA == 3: #  and B_MOD_CSA != 0:
        B_MOD_CSA = 0
        B_DIV_CSA = B_DIV_CSA + 1
        OUTPUT_SIZE = 3UTPUT_SIZE - B_MOD_CSA + 2
        print(f"-> CSA6({3}, {2})")
    else:
        OUTPUT_SIZE = OUTPUT_SIZE + B_MOD_CSA

    # print(f"--> INPUT_SIZE: {INPUT_SIZE} -> OUTPUT_SIZE: {OUTPUT_SIZE}")
    INPUT_SIZE = OUTPUT_SIZE 
    NUM_STAGES = NUM_STAGES + 1
    # input(f'-> Press Enter for next round')

print("-------------------------------")

if INPUT_SIZE == CSA_IN:
    print("-> CSA(6, 3)")
    NUM_STAGES = NUM_STAGES + 1
    INPUT_SIZE = 3

print("-------------------------------")

if INPUT_SIZE > 3:
    print("-> CSA(6, 3) -> PADDED")
    NUM_STAGES = NUM_STAGES + 1
    INPUT_SIZE = 3

print("-------------------------------")

if INPUT_SIZE == 3:
    print("-> CSA(3, 2)")
    NUM_STAGES = NUM_STAGES + 1
    INPUT_SIZE = 2

print("-------------------------------")

if INPUT_SIZE == 2:
    print("assign assign csa_out = b[0] + b[1];")

if INPUT_SIZE == 1:
    print("assign assign csa_out = b[0];") 

print("-------------------------------")
print("finish")
print(f"NUM_STAGES: {NUM_STAGES}")