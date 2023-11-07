from math import log
from helper import *

DEBUG = 1
VERBOSE = 0

# ----------------------------------------------------------------------------
# (Merged FNTT - Merged INTT)

# Merged NTT with pre-processing (optimized) (iterative)
# This is not NTT, this is pre-processing + NTT
# (see: https://eprint.iacr.org/2016/504.pdf)
# A: input polynomial (standard order)
# Psi: 2n-th root of unity
# q: modulus
# B: output polynomial (bit-reversed order)
def MFNTT_DIT_NR(A,Psi_table,q,MONTGOMERY=False,R_w=0,R_wp=0):
    print("\nMFNTT_DIT_NR\n")

    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_MFNTT_DIT_NR.txt", "w")
    if VERBOSE: ff.write("--- MFNTT_DIT_NR (N={})\n".format(N))

    l = int(log(N,2))

    # if DEBUG:
    #     [print(_) for _ in B]
    #     print("-------------------------------------------------")

    t = N
    m = 1
    counter = 0
    while(m<N):
        t = int(t/2)
        for i in range(m):
            j1 = 2*i*t
            j2 = j1 + t - 1

            Psi_pow = int_reverse(m+i,l)
            S = Psi_table[Psi_pow]
            if MONTGOMERY:
                S = (S * R_wp) % q
            # print(f"-- TW: {Psi_pow} -> {S}")

            for j in range(j1,j2+1):
                U = B[j]
                V = (B[j+t]*S) % q

                B[j]   = (U+V) % q
                B[j+t] = (U-V) % q

                # if DEBUG:
                #     counter = counter + 1
                #     if counter == int(N/2):
                #         counter = 0
                #         [print(_) for _ in B]
                #         print("-------------------------------------------------")

                if VERBOSE: ff.write("A_index={}, B_index={}, psi_pow={}\n".format(j,j+t,Psi_pow))
        m = 2*m

        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    return B

# Merged INTT with post-processing (optimized) (iterative)
# This is not NTT, this is pre-processing + NTT
# (see: https://eprint.iacr.org/2016/504.pdf)
# A: input polynomial (Bit-reversed order)
# Psi: 2n-th root of unity
# q: modulus
# B: output polynomial (standard order)
def MINTT_DIF_RN(A,Psi_table,q,MONTGOMERY=False,R_w=0,R_wp=0):
    print("\nMINTT_DIF_RN\n")

    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_MINTT_DIF_RN.txt", "w")
    if VERBOSE: ff.write("--- MINTT_DIF_RN (N={})\n".format(N))

    l = int(log(N,2))

    t = 1
    m = N
    counter = 0
    while(m>1):
        j1 = 0
        h = int(m/2)
        for i in range(h):
            j2 = j1 + t - 1
            Psi_pow = int_reverse(h+i,l)
            #S = (Psi**Psi_pow) % q
            S = Psi_table[Psi_pow]
            if MONTGOMERY:
                S = (S * R_wp) % q

            for j in range(j1,j2+1):
                U = B[j]
                V = B[j+t]

                if DEBUG:
                    print(U, hex(U)[2:])
                    print(V, hex(V)[2:])
                    print(S, hex(S)[2:])

                B[j]   = (U+V) % q
                B[j+t] = (U-V)*S % q

                if DEBUG:
                    print(f"-- TW: {S}")
                    counter = counter + 1
                    if counter == int(N/2):
                        counter = 0
                        [print(_) for _ in B]
                        print("-------------------------------------------------")

                if VERBOSE: ff.write("A_index={}, B_index={}, psi_pow={}\n".format(j,j+t,Psi_pow))
            j1 = j1 + 2*t
        t = 2*t
        m = int(m/2)

        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    # print()
    # [print(f"{hex(_)[2:]}") for _ in B]
    # print()
    # print("xx----------------------------------------------")

    # Final scaling
    N_inv = modinv(N, q)
    for i in range(N):
        B[i] = (B[i] * N_inv) % q

    return B

def MINTT_DIF_RN_W(A,Psi_table,q):
    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_MINTT_DIF_RN.txt", "w")
    if VERBOSE: ff.write("--- MINTT_DIF_RN (N={})\n".format(N))

    l = int(log(N,2))

    t = 1
    m = N
    counter = 0
    while(m>1):
        j1 = 0
        h = int(m/2)
        for i in range(h):
            j2 = j1 + t - 1
            # Psi_pow = int_reverse(h+i,l)
            # S = Psi_table[Psi_pow]

            Psi_pow = int_reverse(h+i,l)
            Psi_pow = N - Psi_pow
            S = Psi_table[Psi_pow]
            if S != 1:
                S = q - S

            for j in range(j1,j2+1):
                U = B[j]
                V = B[j+t]

                B[j]   = (U+V) % q
                B[j+t] = (U-V)*S % q

                if DEBUG:
                    print(f"---> TW: {Psi_pow} -> {S}")
                    counter = counter + 1
                    if counter == int(N/2):
                        counter = 0
                        [print(_) for _ in B]
                    print("-------------------------------------------------")

                if VERBOSE: ff.write("A_index={}, B_index={}, psi_pow={}\n".format(j,j+t,Psi_pow))
            j1 = j1 + 2*t
        t = 2*t
        m = int(m/2)

        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    # Final scaling
    N_inv = modinv(N, q)
    for i in range(N):
        B[i] = (B[i] * N_inv) % q

    return B

# ----------------------------------------------------------------------------
# (FNTT-DIT-NR FNTT-DIF-NR FNTT-DIT-RN FNTT-DIF-RN)

# From paper: NTTU: An Area-Efficient Low-Power NTT-Uncoupled Architecture for NTT-Based Multiplication
# Iterative Radix-2 Decimation-in-Time (DIT) (CT) NTT - NR
# A: input polynomial (standard order)
# W: twiddle factor
# q: modulus
# B: output polynomial (bit-reversed order)
def FNTT_DIT_NR(A,W_table,q,MONTGOMERY=False,R_w=0,R_wp=0):
    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_FNTT_DIT_NR.txt", "w")
    if VERBOSE: ff.write("--- FNTT_DIT_NR (N={})\n".format(N))

    counter = 0
    for s in range(int(log(N,2)),0,-1):
        m = 2**s
        for k in range(int(N/m)):
            #TW = pow(W,int_reverse(k,int(log(N,2))-s)*int(m/2),q)
            TW = W_table[int_reverse(k,int(log(N,2))-s)*int(m/2)]
            for j in range(int(m/2)):
                # print("TW:", TW)
                u = B[k*m+j]
                v = B[k*m+j+int(m/2)]
                t0 = (TW*v)
                t = (TW*v) % q
                if MONTGOMERY:
                    t = (t*R_wp) % q

                B[k*m+j]          = (u+t) % q
                B[k*m+j+int(m/2)] = (u-t) % q

                if DEBUG:
                    print(f"-- u  :  {u}")
                    print(f"-- v  :  {v}")
                    print(f"--- TW:  {TW}")
                    # print(f"--- t0:  {t0}")
                    # print(f"--- t :  {t}")
                    print(f"---- u':  {B[k*m+j]}")
                    print(f"---- v':  {B[k*m+j+int(m/2)] }")
                    print()

                if DEBUG:
                    counter = counter + 1
                    if counter == int(N/2):
                        counter = 0
                        # [print(hex(_)[2:]) for _ in B]
                        [print(_) for _ in B]
                        print("-------------------------------------------------")

                if VERBOSE: ff.write("A_index={}, B_index={}, W_pow={}\n".format(k*m+j,k*m+j+int(m/2),int_reverse(k,int(log(N,2))-s)*int(m/2)))
        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    return B

# Iterative Radix-2 Decimation-in-Frequency (DIF) (GS) NTT - NR
# A: input polynomial (standard order)
# W: twiddle factor
# q: modulus
# B: output polynomial (bit-reversed order)
def FNTT_DIF_NR(A,W_table,q,MONTGOMERY=False,R_w=0,R_wp=0):
    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_FNTT_DIF_NR.txt", "w")
    if VERBOSE: ff.write("--- FNTT_DIF_NR (N={})\n".format(N))

    m = 1
    v = N
    counter = 0

    while v>1:
        s = int(v/2)
        for k in range(m):
            jf = k * v
            jl = jf + s - 1
            jt = 0
            for j in range(jf,jl+1):
                #TW = pow(W,jt,q)
                TW = W_table[jt]
                if MONTGOMERY:
                    TW = (TW*R_wp) % q

                temp = B[j]

                if DEBUG:
                    print(f"-- U : {B[j]}")
                    print(f"-- V : {B[j+s]}")
                    print(f"-- TW: {TW}")


                B[j  ] = (temp + B[j+s]) % q
                B[j+s] = (temp - B[j+s])*TW % q

                if DEBUG:
                    print(f"-- U' : {B[j]}")
                    print(f"-- V' : {B[j+s]}\n")
                    print()

                if DEBUG:
                    counter = counter + 1
                    if counter == int(N/2):
                        counter = 0
                        # [print(hex(_)[2:]) for _ in B]
                        [print(_) for _ in B]
                        print("-------------------------------------------------")

                if VERBOSE: ff.write("A_index={}, B_index={}, W_pow={}\n".format(j,j+s,jt))

                jt = jt + m
        m = 2*m
        v = s

        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    return B

# Iterative Radix-2 Decimation-in-Time (DIT) (CT) NTT - RN
# A: input polynomial (bit-reversed order)
# W: twiddle factor
# q: modulus
# B: output polynomial (standard order)
def FNTT_DIT_RN(A,W_table,q):
    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_FNTT_DIT_RN.txt", "w")
    if VERBOSE: ff.write("--- FNTT_DIT_RN (N={})\n".format(N))

    v = N//2

    t = 1
    m = N
    while(m>1):
        j1 = 0
        h = int(m/2)
        for i in range(h):
            j2 = j1 + t - 1
            for j in range(j1,j2+1):
                W_pow = (v//h)*(j & (t-1))*(h)
                S = W_table[W_pow]

                U = B[j]
                V = B[j+t]

                temp = V*S % q

                B[j]   = (U+temp) % q
                B[j+t] = (U-temp) % q

                if VERBOSE: ff.write("A_index={}, B_index={}, W_pow={}\n".format(j,j+t,W_pow),j)
            j1 = j1 + 2*t
        t = 2*t
        m = int(m/2)
        v = int(v/2)

        if VERBOSE: ff.write("---/n")

    if VERBOSE: ff.close()

    return B

# Iterative Radix-2 Decimation-in-Frequency (DIF) (GS) NTT - RN
# A: input polynomial (reversed order)
# W: twiddle factor
# q: modulus
# B: output polynomial (bit-standard order)
def FNTT_DIF_RN(A,W_table,q):
    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_FNTT_DIF_RN.txt", "w")
    if VERBOSE: ff.write("--- FNTT_DIF_RN (N={})\n".format(N))

    l = int(log(N,2))

    t = 1
    m = N
    while(m>1):
        j1 = 0
        h = int(m/2)
        for i in range(h):
            j2 = j1 + t - 1
            W_pow = int_reverse(0+i,l-1)
            #S = (W**W_pow) % q
            S = W_table[W_pow]
            for j in range(j1,j2+1):
                U = B[j]
                V = B[j+t]

                B[j]   = (U+V) % q
                B[j+t] = (U-V)*S % q

                if VERBOSE: ff.write("A_index={}, B_index={}, W_pow={}\n".format(j,j+t,W_pow))
            j1 = j1 + 2*t
        t = 2*t
        m = int(m/2)

        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    return B

# ----------------------------------------------------------------------------
# (INTT-DIT-RN INTT-DIF-RN INTT-DIT-NR INTT-DIF-NR)

# Iterative Radix-2 Decimation-in-Time (DIT) (CT) NTT - RN
# A: input polynomial (bit-reversed order)
# W: twiddle factor
# q: modulus
# B: output polynomial (standard order)
def INTT_DIT_RN(A,W_table,q,MONTGOMERY=False,R_w=0,R_wp=0):
    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_INTT_DIT_RN.txt", "w")
    if VERBOSE: ff.write("--- INTT_DIT_RN (N={})\n".format(N))

    v = N//2

    t = 1
    m = N
    counter = 0

    # print("-------------------------------------------------")
    while(m>1):
        j1 = 0
        h = int(m/2)
        for i in range(h):
            j2 = j1 + t - 1
            for j in range(j1,j2+1):
                W_pow = (v//h)*(j & (t-1))*(h)
                TW = W_table[W_pow]
                if MONTGOMERY:
                    TW = (TW*R_wp) % q
                # print("-- S:",S,W_pow)

                U = B[j]
                V = B[j+t]

                temp = V*TW % q

                if DEBUG:
                    print("-- S:",TW,W_pow)
                    print("-- U:",U)
                    print("-- V:",V)
                    print()

                B[j]   = (U+temp) % q
                B[j+t] = (U-temp) % q

                if DEBUG:
                    counter = counter + 1
                    if counter == int(N/2):
                        counter = 0
                        # [print(hex(_)[2:]) for _ in B]
                        [print(_) for _ in B]
                        print("-------------------------------------------------")

                if VERBOSE: ff.write("A_index={}, B_index={}, W_pow={}\n".format(j,j+t,W_pow))
            j1 = j1 + 2*t
        t = 2*t
        m = int(m/2)
        v = int(v/2)

        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    # Final scaling
    N_inv = modinv(N, q)
    for i in range(N):
        B[i] = (B[i] * N_inv) % q

    return B

def INTT_DIT_RN_W(A,W_table,q):
    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_INTT_DIT_RN_W.txt", "w")
    if VERBOSE: ff.write("--- INTT_DIT_RN_W (N={})\n".format(N))

    v = N//2

    t = 1
    m = N
    counter = 0

    # print("-------------------------------------------------")
    while(m>1):
        j1 = 0
        h = int(m/2)
        for i in range(h):
            j2 = j1 + t - 1
            for j in range(j1,j2+1):
                W_pow = (v//h)*(j & (t-1))*(h)
                W_pow = (int(N/2)-W_pow) % int(N/2)
                S = W_table[W_pow]
                if S != 1:
                    S = q - S

                U = B[j]
                V = B[j+t]

                temp = V*S % q

                if DEBUG:
                    print("-- S:",S,W_pow)
                    print("-- U:",U)
                    print("-- V:",V)
                    print()

                B[j]   = (U+temp) % q
                B[j+t] = (U-temp) % q

                if DEBUG:
                    counter = counter + 1
                    if counter == int(N/2):
                        counter = 0
                        # [print(hex(_)[2:]) for _ in B]
                        [print(_) for _ in B]
                        print("-------------------------------------------------")

                if VERBOSE: ff.write("A_index={}, B_index={}, W_pow={}\n".format(j,j+t,W_pow))
            j1 = j1 + 2*t
        t = 2*t
        m = int(m/2)
        v = int(v/2)

        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    # Final scaling
    N_inv = modinv(N, q)
    for i in range(N):
        B[i] = (B[i] * N_inv) % q

    return B

# Iterative Radix-2 Decimation-in-Frequency (DIF) (GS) NTT - RN
# A: input polynomial (reversed order)
# W: twiddle factor
# q: modulus
# B: output polynomial (bit-standard order)
def INTT_DIF_RN(A,W_table,q,MONTGOMERY=False,R_w=0,R_wp=0):
    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_INTT_DIF_RN.txt", "w")
    if VERBOSE: ff.write("--- INTT_DIF_RN (N={})\n".format(N))

    l = int(log(N,2))

    t = 1
    m = N
    counter = 0
    while(m>1):
        j1 = 0
        h = int(m/2)
        for i in range(h):
            j2 = j1 + t - 1
            W_pow = int_reverse(0+i,l-1)
            #S = (W**W_pow) % q
            S = W_table[W_pow]
            for j in range(j1,j2+1):
                U = B[j]
                V = B[j+t]

                if DEBUG:
                    print("-- S:",S,W_pow)
                    print("-- U:",U)
                    print("-- V:",V)
                    print()

                B[j]   = (U+V) % q
                B[j+t] = (U-V)*S % q
                if MONTGOMERY:
                    B[j+t] = (B[j+t]*R_wp) % q

                if DEBUG:
                    counter = counter + 1
                    if counter == int(N/2):
                        counter = 0
                    #     # [print(hex(_)[2:]) for _ in B]
                        [print(_) for _ in B]
                        print("-------------------------------------------------")

                if VERBOSE: ff.write("A_index={}, B_index={}, W_pow={}\n".format(j,j+t,W_pow))
            j1 = j1 + 2*t
        t = 2*t
        m = int(m/2)

        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    # Final scaling
    N_inv = modinv(N, q)
    for i in range(N):
        B[i] = (B[i] * N_inv) % q

    return B

def INTT_DIF_RN_W(A,W_table,q,MONTGOMERY,R_w,R_wp):
    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_INTT_DIF_RN.txt", "w")
    if VERBOSE: ff.write("--- INTT_DIF_RN (N={})\n".format(N))

    l = int(log(N,2))

    t = 1
    m = N
    counter = 0
    while(m>1):
        j1 = 0
        h = int(m/2)
        for i in range(h):
            j2 = j1 + t - 1

            W_pow = int_reverse(0+i,l-1)
            W_pow = (int(N/2)-W_pow) % int(N/2)
            S = W_table[W_pow]
            if MONTGOMERY:
                if S != R_w:
                    S = q - S
            else:
                if S != 1:
                    S = q - S

            for j in range(j1,j2+1):
                U = B[j]
                V = B[j+t]

                if DEBUG:
                    print("-- S:",S,W_pow)
                    print("-- U:",U)
                    print("-- V:",V)
                    print()

                B[j]   = (U+V) % q
                B[j+t] = (U-V)*S % q
                if MONTGOMERY:
                    B[j+t] = (B[j+t]*R_wp) % q

                if DEBUG:
                    print(f"-- u  :  {U}")
                    print(f"-- v  :  {V}")
                    print(f"--- TW:  {S}")
                    # print(f"--- t0:  {t0}")
                    # print(f"--- t :  {t}")
                    print(f"---- c:  {B[j]}")
                    print(f"---- d:  {B[j+t]}")
                    print()

                if DEBUG:
                    counter = counter + 1
                    if counter == int(N/2):
                        counter = 0
                    #     # [print(hex(_)[2:]) for _ in B]
                        [print(_) for _ in B]
                        print("-------------------------------------------------")

                if VERBOSE: ff.write("A_index={}, B_index={}, W_pow={}\n".format(j,j+t,W_pow))
            j1 = j1 + 2*t
        t = 2*t
        m = int(m/2)

        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    # Final scaling
    N_inv = modinv(N, q)
    for i in range(N):
        B[i] = (B[i] * N_inv) % q

    return B

# From paper: NTTU: An Area-Efficient Low-Power NTT-Uncoupled Architecture for NTT-Based Multiplication
# Iterative Radix-2 Decimation-in-Time (DIT) (CT) NTT - NR
# A: input polynomial (standard order)
# W: twiddle factor
# q: modulus
# B: output polynomial (bit-reversed order)
def INTT_DIT_NR(A,W_table,q,MONTGOMERY,R_w,R_wp):
    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_INTT_DIT_NR.txt", "w")
    if VERBOSE: ff.write("--- INTT_DIT_NR (N={})\n".format(N))

    for s in range(int(log(N,2)),0,-1):
        m = 2**s
        for k in range(int(N/m)):
            #TW = pow(W,int_reverse(k,int(log(N,2))-s)*int(m/2),q)
            TW = W_table[int_reverse(k,int(log(N,2))-s)*int(m/2)]
            if MONTGOMERY:
                TW = TW * R_wp
            for j in range(int(m/2)):
                u = B[k*m+j]
                t = (TW*B[k*m+j+int(m/2)]) % q

                B[k*m+j]          = (u+t) % q
                B[k*m+j+int(m/2)] = (u-t) % q

                if VERBOSE: ff.write("A_index={}, B_index={}, W_pow={}\n".format(k*m+j,k*m+j+int(m/2),int_reverse(k,int(log(N,2))-s)*int(m/2)))
        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    # Final scaling
    N_inv = modinv(N, q)
    for i in range(N):
        B[i] = (B[i] * N_inv) % q

    return B

def INTT_DIT_NR_W(A,W_table,q):
    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_INTT_DIT_NR.txt", "w")
    if VERBOSE: ff.write("--- INTT_DIT_NR (N={})\n".format(N))

    for s in range(int(log(N,2)),0,-1):
        m = 2**s
        for k in range(int(N/m)):

            W_pow = int_reverse(k,int(log(N,2))-s)*int(m/2)
            W_pow = (int(N/2)-W_pow) % int(N/2)
            TW = W_table[W_pow]
            if TW != 1:
                TW = q - TW

            for j in range(int(m/2)):
                u = B[k*m+j]
                t = (TW*B[k*m+j+int(m/2)]) % q

                B[k*m+j]          = (u+t) % q
                B[k*m+j+int(m/2)] = (u-t) % q

                if VERBOSE: ff.write("A_index={}, B_index={}, W_pow={}\n".format(k*m+j,k*m+j+int(m/2),int_reverse(k,int(log(N,2))-s)*int(m/2)))
        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    # Final scaling
    N_inv = modinv(N, q)
    for i in range(N):
        B[i] = (B[i] * N_inv) % q

    return B

# Iterative Radix-2 Decimation-in-Frequency (DIF) (GS) NTT - NR
# A: input polynomial (standard order)
# W: twiddle factor
# q: modulus
# B: output polynomial (bit-reversed order)
def INTT_DIF_NR(A,W_table,q,MONTGOMERY,R_w,R_wp):
    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_INTT_DIF_NR.txt", "w")
    if VERBOSE: ff.write("--- INTT_DIF_NR (N={})\n".format(N))

    m = 1
    v = N

    while v>1:
        s = int(v/2)
        for k in range(m):
            jf = k * v
            jl = jf + s - 1
            jt = 0
            for j in range(jf,jl+1):
                #TW = pow(W,jt,q)
                TW = W_table[jt]
                if MONTGOMERY:
                    TW = (TW * R_wp) % q

                temp = B[j]

                B[j  ] = (temp + B[j+s]) % q
                B[j+s] = (temp - B[j+s])*TW % q

                if VERBOSE: ff.write("A_index={}, B_index={}, W_pow={}\n".format(j,j+s,jt))

                jt = jt + m
        m = 2*m
        v = s

        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    # Final scaling
    N_inv = modinv(N, q)
    for i in range(N):
        B[i] = (B[i] * N_inv) % q

    return B

def INTT_DIF_NR_W(A,W_table,q):
    N = len(A)
    B = [_ for _ in A]

    if VERBOSE: ff = open("pattern_INTT_DIF_NR.txt", "w")
    if VERBOSE: ff.write("--- INTT_DIF_NR (N={})\n".format(N))

    m = 1
    v = N
    counter = 0

    while v>1:
        s = int(v/2)
        for k in range(m):
            jf = k * v
            jl = jf + s - 1
            jt = 0
            for j in range(jf,jl+1):

                W_pow = jt
                W_pow = (int(N/2)-W_pow) % int(N/2)
                TW = W_table[W_pow]
                if TW != 1:
                    TW = q - TW

                temp = B[j]

                B[j  ] = (temp + B[j+s]) % q
                B[j+s] = (temp - B[j+s])*TW % q

                if DEBUG:
                    print(f"-- TW: {TW}")
                    counter = counter + 1
                    if counter == int(N/2):
                        counter = 0
                        print()
                        # [print(hex(_)[2:]) for _ in B]
                        [print(_) for _ in B]
                        print()
                        print("-------------------------------------------------")

                if VERBOSE: ff.write("A_index={}, B_index={}, W_pow={}\n".format(j,j+s,jt))

                jt = jt + m
        m = 2*m
        v = s

        if VERBOSE: ff.write("---\n")

    if VERBOSE: ff.close()

    # Final scaling
    N_inv = modinv(N, q)
    for i in range(N):
        B[i] = (B[i] * N_inv) % q

    return B

# ----------------------------------------------------------------------------

def NaiveNTT_NR(A,W,q):
    """
    Very slow baseline implementation. Do not use for large parameter set.
    """
    N = len(A)
    B = [0]*N

    v = int(log(N,2))

    for i in range(N):
        for j in range(N):
            W_pow = int_reverse(i,v)*j
            B[i] = (B[i] + A[j]*(W**W_pow)) % q
    return B

# ----------------------------------------------------------------------------

# NWC Polynomial Multiplication with FNTT/INTT + pre-/post-processing
def nwc_pol_mul_v1(A, B, psi, psiv, w, wv, q):
    n = len(A)
    A_p = [0] * n
    B_p = [0] * n
    C   = [0] * n

    for i in range(n):
        A_p[i] = (A[i] * (psi**i % q)) % q
        B_p[i] = (B[i] * (psi**i % q)) % q

    A_n = FNTT_DIT_NR(A_p,w,q)
    B_n = FNTT_DIT_NR(B_p,w,q)

    C_n = [(a*b)%q for a,b in zip(A_n,B_n)]

    C_p = INTT_DIF_RN(C_n,wv,q)

    for i in range(n):
        C[i] = (C_p[i] * (psiv**i % q)) % q

    return C

# NWC Polynomial Multiplication with FMNTT/MINTT
def nwc_pol_mul_v2(A, B, psi, psiv, q):
    A_n = MFNTT_DIT_NR(A,psi,q)
    B_n = MFNTT_DIT_NR(B,psi,q)

    C_n = [(a*b)%q for a,b in zip(A_n,B_n)]

    C   = MINTT_DIF_RN(C_n,psiv,q)

    return C
