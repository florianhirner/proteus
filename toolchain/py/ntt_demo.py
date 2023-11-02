from helper import *
from ntt import *
from genparam import *
from random import randint

# ---------------------------------------------------
# Parameters

args = sys.argv[1:]
if len(args) != 6:
    print("invalid useage: python3 ntt_demo.py <NTT_TYPE> <RADIX_TYPE> <OP> <LOGN> <LOGQ> <REDUCTION_TYPE>")
    exit()
# print(args)

# arg 2
NTT_TYPE        = args[0]           # NORMAL, MERGED
RADIX2_TYPE     = args[1]           # SDF, MDC
OP              = int(args[2])      # 1, ..., 8
LOGN            = int(args[3])      # 1, ... , 12
LOGQ            = int(args[4])      # 16, ..., 64
REDUCTION_TYPE  = args[5]           # ADDSHIFT, MONTGOMERY

print("NTT_TYPE       : {}".format(NTT_TYPE))
print("RADIX2_TYPE    : {}".format(RADIX2_TYPE))
print("OP             : {}".format(OP))
print("LOGN           : {}".format(LOGN))
print("LOGQ           : {}".format(LOGQ))
print("REDUCTION_TYPE : {}".format(REDUCTION_TYPE))

MONTGOMERY      = True if REDUCTION_TYPE == "MONTGOMERY" else False

# ---------------------------------------------------

logq = LOGQ
logn = LOGN
n    = 2**logn

q = None
if LOGQ == 28:
    q = 268369921 # (2**28 - 2**16 + 1) 
if LOGQ == 64:
    q = 18446744069414584321 # 2**64 - 2**32 + 1
if LOGQ == 256:
    q = 2**256 - 2**168 + 1

R_w = 0
R_wp = 0

if REDUCTION_TYPE == "MONTGOMERY":
    q    = 9223372036855300097
    R_w  = 18446744073709551616 % q
    R_wp = 4683743475026890752 % q

n, q, psi, psi_inv, w, w_inv = generate_params(n=n,logq=logq,q=q)

# ## 64bit; 2^4
if n == 2**4 and logq == 64:
    q=18446744069414584321
    psi=18428729670905102337
    psi_inv=4398046511104
    w=18446744069414580225
    w_inv=4503599626321920

if n == 2**4 and logq == 64 and REDUCTION_TYPE == "MONTGOMERY":
    n=16
    q=9223372036855300097
    psi=5657796073596360593
    psi_inv=7288423858874052154
    w=7922191594686190466
    w_inv=2689687729574089043

# ## 64bit; 2^12
if n == 2**12 and logq == 64:
    q=18446744069414584321
    psi=12021080749084121360
    psi_inv=11038142780773479373
    w=16810698496665110290
    w_inv=17055549785704794001

if n == 2**12 and logq == 64 and REDUCTION_TYPE == "MONTGOMERY":
    n=4096
    q=9223372036855300097
    psi=7000248747822997178
    psi_inv=4159809411629470058
    w=7471113432342323446
    w_inv=561937182808484582

print("\nParameters:\n- n={}\n- q={}\n- psi={}\n- psi_inv={}\n- w={}\n- w_inv={}\n".format(n, q, psi, psi_inv, w, w_inv))

# print()
# print("q Max       = {}".format(pow(2, 64)-1))
# print("q           = {}".format(q))
# print("q Min       = {}".format(pow(2, 63)))
# print("q in hex    = {}".format(hex(q)))
# print("q in binary = {0:b}".format(q))

psi_table     = [1]*n
psi_inv_table = [1]*n
for i in range(1,n):
    psi_table[i]     = (psi_table[i-1]*psi)%q
    psi_inv_table[i] = (psi_inv_table[i-1]*psi_inv)%q

w_table     = [1]*(n//2)
w_inv_table = [1]*(n//2)
for i in range(1,n//2):
    w_table[i]     = (w_table[i-1]*w)%q
    w_inv_table[i] = (w_inv_table[i-1]*w_inv)%q

# ---------------------------------------------------
# transfere twiddle factors into the REDUCTION_TYPE domain

if REDUCTION_TYPE == "MONTGOMERY":
    psi_table = [(_*R_w)%q for _ in psi_table]
    psi_inv_table = [(_*R_w)%q for _ in psi_inv_table]

    w_table = [(_*R_w)%q for _ in w_table]
    w_inv_table = [(_*R_w)%q for _ in w_inv_table]

# ---------------------------------------------------
# NTT/INTT

if NTT_TYPE == "NORMAL":
    # print("-- FNTT-INTT conversion")
    # A = [randint(0,q-1) for _ in range(n)]
    A = [_ for _ in range(n)]
    print()

    # DIT: CT, DIF: GS

    # OP1- FNTT-DIT-NR <---> INTT-DIF-RN
    # OP2- FNTT-DIF-NR <---> INTT-DIT-RN

    # OP3- FNTT-DIT-NR <---> INTT-DIT-RN
    # OP4- FNTT-DIF-NR <---> INTT-DIF-RN

    # OP5- FNTT-DIT-NR + Bit-reverse <---> INTT-DIT-NR + Bit-reverse
    # OP6- FNTT-DIF-NR + Bit-reverse <---> INTT-DIF-NR + Bit-reverse

    # OP7- FNTT-DIT-NR + Bit-reverse + Re-order <---> FNTT-DIT-NR + Div-by-n + Bit-reverse
    # OP8- FNTT-DIF-NR + Bit-reverse + Re-order <---> FNTT-DIF-NR + Div-by-n + Bit-reverse

    # -- OP1
    if OP == 1:
        # print("-------------------------------------------------")
        # print("Calculate NTT - OP=1: FNTT_DIT_NR - INTT_DIF_RN\n")

        A_ntt1 = FNTT_DIT_NR(A,w_table,q,MONTGOMERY,R_w,R_wp)

        A_pol1 = INTT_DIF_RN(A_ntt1,w_inv_table,q,MONTGOMERY,R_w,R_wp)
        if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol1)]) == 0:
            print("OP1...OK")
        else:
            print("OP1...FAIL")

        # generate tb I/O data
        f = open("hw/tb/NTT_DIN.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()

        f = open("hw/tb/NTT_DOUT.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[0::2]]
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[1::2]]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1]
        f.close()

        f = open("hw/tb/INTT_DIN.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[0::2]]
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[1::2]]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1]
        f.close()

        f = open("hw/tb/INTT_DOUT.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()
        # print("-------------------------------------------------")

    # -- OP2
    if OP == 2:
        print("-------------------------------------------------")
        print("Calculate NTT - OP=2: FNTT_DIF_NR - INTT_DIT_RN\n")

        A_ntt1 = FNTT_DIF_NR(A,w_table,q,MONTGOMERY,R_w,R_wp)

        A_pol1 = INTT_DIT_RN(A_ntt1,w_inv_table,q,MONTGOMERY,R_w,R_wp)
        if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol1)]) == 0:
            print("OP2...OK")
        else:
            print("OP2...FAIL")

        ## test twiddle factor optimization
        # A_pol1 = INTT_DIT_RN_W(A_ntt1,w_table,q
        # if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol1)]) == 0:
        #     print("OP2...OK")
        # else:
        #     print("OP2...FAIL")

        # generate tb I/O data
        f = open("hw/tb/NTT_DIN.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()

        f = open("hw/tb/NTT_DOUT.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[0::2]]
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[1::2]]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1]
        f.close()

        f = open("hw/tb/INTT_DIN.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[0::2]]
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[1::2]]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1]
        f.close()

        f = open("hw/tb/INTT_DOUT.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()
        print("-------------------------------------------------")

    # -- OP3
    if OP == 3:
        print("-------------------------------------------------")
        print("Calculate NTT - OP=3: FNTT_DIT_NR - INTT_DIT_RN\n")

        A_ntt1 = FNTT_DIT_NR(A,w_table,q,MONTGOMERY,R_w,R_wp)

        # without TW optimization
        A_pol1 = INTT_DIT_RN(A_ntt1,w_inv_table,q,MONTGOMERY,R_w,R_wp)
        # [print(hex(_)[2:]) for _ in A_pol1]
        if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol1)]) == 0:
            print("OP3...OK")
        else:
            print("OP3...FAIL")

        # with TW optimization
        # A_pol1 = INTT_DIT_RN_W(A_ntt1,w_table,q)
        # if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol1)]) == 0:
        #     print("OP3...OK")
        # else:
        #     print("OP3...FAIL")

        # generate tb I/O data
        f = open("hw/tb/NTT_DIN.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()

        f = open("hw/tb/NTT_DOUT.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[0::2]]
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[1::2]]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1]
        f.close()

        f = open("hw/tb/INTT_DIN.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[0::2]]
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[1::2]]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1]
        f.close()

        f = open("hw/tb/INTT_DOUT.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()
        print("-------------------------------------------------")

    # -- OP4
    if OP == 4:
        print("-------------------------------------------------")
        print("Calculate NTT - OP=4: FNTT_DIF_NR - INTT_DIF_RN\n")

        A_ntt1 = FNTT_DIF_NR(A,w_table,q,MONTGOMERY,R_w,R_wp)

        A_pol1 = INTT_DIF_RN(A_ntt1,w_inv_table,q,MONTGOMERY,R_w,R_wp)
        if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol1)]) == 0:
            print("OP4...OK")
        else:
            print("OP4...FAIL")

        # A_pol1 = INTT_DIF_RN_W(A_ntt1,w_table,q)
        # if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol1)]) == 0:
        #     print("OP4...OK")
        # else:
        #     print("OP4...FAIL")

        # generate tb I/O data
        f = open("hw/tb/NTT_DIN.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()

        f = open("hw/tb/NTT_DOUT.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[0::2]]
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[1::2]]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1]
        f.close()

        f = open("hw/tb/INTT_DIN.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[0::2]]
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[1::2]]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1]
        f.close()

        f = open("hw/tb/INTT_DOUT.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()
        print("-------------------------------------------------")

    # -- OP5
    if OP == 5:
        print("-------------------------------------------------")
        print("Calculate NTT - OP=5: FNTT_DIT_NR - INTT_DIT_NR\n")

        A_ntt1 = FNTT_DIT_NR(A,w_table,q,MONTGOMERY,R_w,R_wp)
        A_ntt2 = arr_reverse(A_ntt1,logn)

        A_pol1 = INTT_DIT_NR(A_ntt2,w_inv_table,q,MONTGOMERY,R_w,R_wp)
        A_pol2 = arr_reverse(A_pol1,logn)
        if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol2)]) == 0:
            print("OP5...OK")
        else:
            print("OP5...FAIL")

        # A_pol1 = INTT_DIT_NR_W(A_ntt2,w_table,q)
        # A_pol2 = arr_reverse(A_pol1,logn)
        # if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol2)]) == 0:
        #     print("OP5...OK")
        # else:
        #     print("OP5...FAIL")

        # generate tb I/O data
        f = open("hw/tb/NTT_DIN.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()

        f = open("hw/tb/NTT_DOUT.mem", "w")
        # if RADIX2_TYPE == "MDC":
        #     [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2[0::2]]
        #     [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2[1::2]]
        # else:
        #     [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2]
        [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2]
        f.close()

        f = open("hw/tb/INTT_DIN.mem", "w")
        # if RADIX2_TYPE == "MDC":
        #     [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2[0::2]]
        #     [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2[1::2]]
        # else:
        #     [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2]
        [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2]
        f.close()

        f = open("hw/tb/INTT_DOUT.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()
        print("-------------------------------------------------")

    # -- OP6
    if OP == 6:
        print("-------------------------------------------------")
        print("Calculate NTT - OP=6: FNTT_DIF_NR - INTT_DIF_NR\n")

        A_ntt1 = FNTT_DIF_NR(A,w_table,q,MONTGOMERY,R_w,R_wp)
        A_ntt2 = arr_reverse(A_ntt1,logn)

        A_pol1 = INTT_DIF_NR(A_ntt2,w_inv_table,q,MONTGOMERY,R_w,R_wp)
        A_pol2 = arr_reverse(A_pol1,logn)
        if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol2)]) == 0:
            print("OP6...OK")
        else:
            print("OP6...FAIL")

        # A_pol1 = INTT_DIF_NR_W(A_ntt2,w_table,q)
        # A_pol2 = arr_reverse(A_pol1,logn)
        # if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol2)]) == 0:
        #     print("OP6...OK")
        # else:
        #     print("OP6...FAIL")

        # generate tb I/O data
        f = open("hw/tb/NTT_DIN.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()

        f = open("hw/tb/NTT_DOUT.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2]
        f.close()

        f = open("hw/tb/INTT_DIN.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2]
        f.close()

        f = open("hw/tb/INTT_DOUT.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()
        print("-------------------------------------------------")

    # -- OP7
    if OP == 7:
        print("-------------------------------------------------")
        print("Calculate NTT - OP=7: FNTT_DIT_NR - FNTT_DIT_NR\n")

        A_ntt1 = FNTT_DIT_NR(A,w_table,q,MONTGOMERY,R_w,R_wp)
        A_ntt2 = arr_reverse(A_ntt1,logn)
        A_ntt3 = arr_reorder(A_ntt2)

        A_pol1 = FNTT_DIT_NR(A_ntt3,w_table,q,MONTGOMERY,R_w,R_wp)
        A_pol2 = arr_divbyn(A_pol1,n,q)
        A_pol3 = arr_reverse(A_pol2,logn)
        if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol3)]) == 0:
            print("OP7...OK")
        else:
            print("OP7...FAIL")

        # generate tb I/O data
        f = open("hw/tb/NTT_DIN.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()

        f = open("hw/tb/NTT_DOUT.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt3]
        f.close()

        f = open("hw/tb/INTT_DIN.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt3]
        f.close()

        f = open("hw/tb/INTT_DOUT.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()
        print("-------------------------------------------------")

    # -- OP8
    if OP == 8:
        print("-------------------------------------------------")
        print("Calculate NTT - OP=8: FNTT_DIF_NR - FNTT_DIF_NR\n")

        A_ntt1 = FNTT_DIF_NR(A,w_table,q,MONTGOMERY,R_w,R_wp)
        A_ntt2 = arr_reverse(A_ntt1,logn)
        A_ntt3 = arr_reorder(A_ntt2)

        A_pol1 = FNTT_DIF_NR(A_ntt3,w_table,q,MONTGOMERY,R_w,R_wp)
        A_pol2 = arr_divbyn(A_pol1,n,q)
        A_pol3 = arr_reverse(A_pol2,logn)
        if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol3)]) == 0:
            print("OP8...OK")
        else:
            print("OP8...FAIL")

        # generate tb I/O data
        f = open("hw/tb/NTT_DIN.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()

        f = open("hw/tb/NTT_DOUT.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt3]
        f.close()

        f = open("hw/tb/INTT_DIN.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt2]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt3]
        f.close()

        f = open("hw/tb/INTT_DOUT.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()
        print("-------------------------------------------------")

    # ---------------------------------------------------
    # generate twdiddle BROMS for OP3

    f = open("hw/constant/tw_roms.v", "w")
    f.write("`timescale 1ns / 1ps\n")
    for d in range(1, logn):
        pow_d = pow(2, logn-d-1)
        f.write("//-------------------------------------------------------------------------------------------------\n")
        f.write("\n")
        f.write(f"module tw_rom_{d}\n")
        f.write(f"#(\n")
        f.write(f"    parameter LOGN  = {d},\n")
        f.write(f"    parameter LOGQ  = {logq},\n")
        f.write(f"    parameter DELAY = 1,\n")
        f.write(f"    parameter STAGE = 1\n")
        f.write(f")(\n")
        f.write(f"    input            clk,\n")
        f.write(f"    input [LOGN-1:0] raddr,\n")
        f.write(f"    output[LOGQ-1:0] b\n")
        f.write(f");\n")
        f.write(f"\n")
        if (2**d < 256):
            f.write("(* rom_style = \"distributed\" *)\n") 
        else:
            f.write("(* ram_style = \"block\" *)\n")
        f.write(f"reg [LOGQ-1:0] brom_out, brom_out2;\n")
        f.write(f"\n")
        f.write(f"always @(posedge clk) begin\n")
        f.write(f"    case(raddr[STAGE-1:0])\n")
        for i, w in zip(range(len(w_table[::pow_d])), w_table[::pow_d]):
            f.write(f"    {int(math.log2(int(n/pow_d)))}'d{i}: brom_out <= {logq}'d{w};\n")
        f.write(f"    default: brom_out <= 64'h1;\n")
        f.write(f"    endcase\n")
        f.write(f"end\n")
        f.write(f"\n")
        f.write(f"generate\n")
        f.write(f"    if(DELAY == 1) begin\n")
        f.write(f"        assign b = brom_out;\n")
        f.write(f"    end\n")
        f.write(f"endgenerate\n")
        f.write(f"\n")
        f.write(f"endmodule\n")
        f.write("\n")
    f.close()

# ---------------------------------------------------
# MNTT/MINTT (NTT/INTT with NWC)

# OP1- MFNTT-DIT-NR <---> MINTT-DIF-RN
# OP2- OP7 with pre/post-processing
# OP3- OP8 with pre/post processing

if NTT_TYPE == "MERGED":
    print("-- MFNTT-MINTT conversion")

    # A = [randint(0,q-1) for _ in range(n)]
    A = [_ for _ in range(n)]
    # [print(hex(_)[2:]) for _ in A]
    print()

    # -- OP1
    if OP == 1:
        print("-------------------------------------------------")
        print("Calculate MNTT - OP=1: MFNTT_DIT_NR - MINTT_DIF_RN\n")

        A_ntt1 = MFNTT_DIT_NR(A,psi_table,q,MONTGOMERY,R_w,R_wp)

        A_pol1 = MINTT_DIF_RN(A_ntt1,psi_inv_table,q,MONTGOMERY,R_w,R_wp)
        if sum([abs(p0-p1) for p0,p1 in zip(A,A_pol1)]) == 0:
            print("OP1...OK")
        else:
            print("OP1...FAIL")

        # generate tb I/O data
        f = open("hw/tb/NTT_DIN.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()

        f = open("hw/tb/NTT_DOUT.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[0::2]]
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[1::2]]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1]
        f.close()

        f = open("hw/tb/INTT_DIN.mem", "w")
        if RADIX2_TYPE == "MDC":
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[0::2]]
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1[1::2]]
        else:
            [f.write(f"{hex(_)[2:]}\n") for _ in A_ntt1]
        f.close()

        f = open("hw/tb/INTT_DOUT.mem", "w")
        [f.write(f"{hex(_)[2:]}\n") for _ in A]
        f.close()
        print("-------------------------------------------------")

    # -- OP2
    if OP == 2:
        print("-------------------------------------------------")
        print("Calculate MNTT - OP=2: FNTT_DIT_NR - FNTT_DIT_NR\n")

        # pre-processing
        A_ntt0 = [a*psi_table[i] % q for i,a in enumerate(A)]
        A_ntt1 = FNTT_DIT_NR(A_ntt0,w_table,q)
        A_ntt2 = arr_reverse(A_ntt1,logn)
        A_ntt3 = arr_reorder(A_ntt2)

        print("-------------------------------------------------")
        print("> FNTT_DIT_NR")
        print("-------------------------------------------------")

        A_pol1 = FNTT_DIT_NR(A_ntt3,w_table,q)
        A_pol2 = arr_divbyn(A_pol1,n,q)
        A_pol3 = arr_reverse(A_pol2,logn)
        A_pol4 = [a*psi_inv_table[i] % q for i,a in enumerate(A_pol3)]
        A_nwc0 = MFNTT_DIT_NR(A,psi_table,q)
        A_nwc1 = arr_reverse(A_nwc0,logn)

        if (sum([abs(p0-p1) for p0,p1 in zip(A,A_pol4)]) == 0) and \
           (sum([abs(p0-p1) for p0,p1 in zip(A_ntt2,A_nwc1)]) == 0):
            print("OP2...OK")
        else:
            print("OP2...FAIL")
        # print("-------------------------------------------------")

    # -- OP3
    if OP == 3:
        # print("-------------------------------------------------")
        print("Calculate MNTT - OP=3: FNTT_DIF_NR - FNTT_DIF_NR\n")

        A_ntt0 = [a*psi_table[i] % q for i,a in enumerate(A)]
        A_ntt1 = FNTT_DIF_NR(A_ntt0,w_table,q)
        A_ntt2 = arr_reverse(A_ntt1,logn)
        A_ntt3 = arr_reorder(A_ntt2)
        A_pol1 = FNTT_DIF_NR(A_ntt3,w_table,q)
        A_pol2 = arr_divbyn(A_pol1,n,q)
        A_pol3 = arr_reverse(A_pol2,logn)
        A_pol4 = [a*psi_inv_table[i] % q for i,a in enumerate(A_pol3)]

        A_nwc0 = MFNTT_DIT_NR(A,psi_table,q)
        A_nwc1 = arr_reverse(A_nwc0,logn)

        if (sum([abs(p0-p1) for p0,p1 in zip(A,A_pol4)]) == 0) and (sum([abs(p0-p1) for p0,p1 in zip(A_ntt2,A_nwc1)]) == 0):
            print("OP3...OK")
        else:
            print("OP3...FAIL")
        # print("-------------------------------------------------")

    f = open("hw/constant/tw_roms.v", "w")
    f.write("`timescale 1ns / 1ps\n")
    ## FNTT
    for d in range(0, logn):
        pow_d = pow(2, logn-d-1)
        f.write("//-------------------------------------------------------------------------------------------------\n")
        f.write("\n")
        f.write(f"module tw_rom_{d}_ntt_nwc\n")
        f.write(f"#(\n")
        f.write(f"    parameter LOGN  = {d},\n")
        f.write(f"    parameter LOGQ  = {logq},\n")
        f.write(f"    parameter DELAY = 1,\n")
        f.write(f"    parameter STAGE = {d}\n")
        f.write(f")(\n")
        f.write(f"    input            clk,\n")
        f.write(f"    input [LOGN-1:0] raddr,\n")
        f.write(f"    output[LOGQ-1:0] b\n")
        f.write(f");\n")
        f.write(f"\n")
        if (2**d < 256):
            f.write("(* rom_style = \"distributed\" *)\n") 
        else:
            f.write("(* ram_style = \"block\" *)\n")
        f.write(f"reg [LOGQ-1:0] brom_out, brom_out2;\n")
        f.write(f"\n")
        f.write(f"always @(posedge clk) begin\n")
        if d > 0:
            f.write(f"    case(raddr[STAGE-1:0])\n")
        else:
            f.write(f"    case(raddr[0:0])\n")
        
        # for i, w in zip(range(len(psi_table[::pow_d*2])), psi_table[::pow_d*2]):
        #     f.write(f"    {int(math.log2(int(n/pow_d)))}'d{i}: brom_out <= {logq}'d{w};")

        counter = 0
        stage = 0
        l = int(log(n,2))
        t = n
        m = 1
        while(m<n):
            t = int(t/2)
            for i in range(m):
                j1 = 2*i*t
                j2 = j1 + t - 1

                Psi_pow = int_reverse(m+i,l)
                w = psi_table[Psi_pow]
                # if MONTGOMERY:
                #     w = (w * R_w) % q

                for j in range(j1,j2+1):
                    # f.write(f"{counter} mod {(n >> stage+1)} = {counter % (n >> stage+1)}")
                    if d == stage and (counter % (n >> stage+1)) == 0:
                        index = int_reverse(j,l)
                        f.write(f"    {int(math.log2(int(n/pow_d)))}'d{index}: brom_out <= {logq}'d{w};\n")
                    counter = counter + 1
                    if counter == int(n/2):
                        counter = 0
                        stage = stage + 1
            m = 2*m

        f.write(f"    default: brom_out <= 64'h1;\n")
        f.write(f"    endcase\n")
        f.write(f"end\n")
        f.write(f"\n")
        f.write(f"generate")
        f.write(f"    if(DELAY == 1) begin\n")
        f.write(f"        assign b = brom_out;\n")
        f.write(f"    end\n")
        f.write(f"endgenerate\n")
        f.write(f"\n")
        f.write(f"endmodule\n")
        f.write("\n")

    # ## INTT
    for d in range(0, logn):
        pow_d = pow(2, logn-d-1)
        f.write("//-------------------------------------------------------------------------------------------------\n")
        f.write("\n")
        f.write(f"module tw_rom_{d}_intt_nwc\n")
        f.write(f"#(\n")
        f.write(f"    parameter LOGN  = {d},\n")
        f.write(f"    parameter LOGQ  = {logq},\n")
        f.write(f"    parameter DELAY = 1,\n")
        f.write(f"    parameter STAGE = {d}\n")
        f.write(f")(\n")
        f.write(f"    input            clk,\n")
        f.write(f"    input [LOGN-1:0] raddr,\n")
        f.write(f"    output[LOGQ-1:0] b\n")
        f.write(f");\n")
        f.write(f"\n")
        if (2**d < 256):
            f.write("(* rom_style = \"distributed\" *)\n") 
        else:
            f.write("(* ram_style = \"block\" *)\n")
        f.write(f"reg [LOGQ-1:0] brom_out, brom_out2;\n")
        f.write(f"\n")
        f.write(f"always @(posedge clk) begin\n")
        if d > 0:
            f.write(f"    case(raddr[STAGE-1:0])\n")
        else:
            f.write(f"    case(raddr[0:0])\n")

        counter = 0
        stage = 0

        l = int(log(n,2))
        t = 1
        m = n
        while(m>1):
            j1 = 0
            h = int(m/2)
            for i in range(h):
                j2 = j1 + t - 1
                Psi_pow = int_reverse(h+i,l)
                w = psi_inv_table[Psi_pow]
                # if MONTGOMERY:
                #     w = (w * R_w) % q

                for j in range(j1,j2+1):
                    # if d == stage and (counter % (n >> stage+1)) == 0:
                    #     index = int_reverse(j,l)
                    #     f.write(f"    {int(math.log2(int(n/pow_d)))}'d{index}: brom_out <= {logq}'d{w};")

                    if d == logn-stage-1 and (counter % (n >> logn-stage)) == 0:
                        # index = int_reverse(i,l) >> (stage+1)
                        # index = i #  >> (stage-1)
                        # index = n - int_reverse(i,l)
                        # index = index >> (stage+1)
                        f.write(f"    {int(math.log2(int(n/pow_d)))}'d{i}: brom_out <= {logq}'d{w};\n")

                    counter = counter + 1
                    if counter == int(n/2):
                        counter = 0
                        stage = stage + 1

                j1 = j1 + 2*t
            t = 2*t
            m = int(m/2)

        f.write(f"    default: brom_out <= 64'h1;\n")
        f.write(f"    endcase\n")
        f.write(f"end\n")
        f.write(f"\n")
        f.write(f"generate\n")
        f.write(f"    if(DELAY == 1) begin\n")
        f.write(f"        assign b = brom_out;\n")
        f.write(f"    end\n")
        f.write(f"endgenerate\n")
        f.write(f"\n")
        f.write(f"endmodule\n")
        f.write("\n")

    f.close()
