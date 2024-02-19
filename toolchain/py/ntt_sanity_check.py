
from ntt import *
from helper import *
from random import randint

TOY_PARAMETERS = True # True: use toy parameters, False: use custom parameters

# Parameters 
if TOY_PARAMETERS:
    logn=4                       # log_2(polynomial size)
    log2n=logn+1
    n=2**logn
    q=18446744069414584321       # prime
    psi=18428729670905102337     # 2n-th root of unity
    psi_inv=4398046511104        # modular inverse of 2n-th root of unity
    w=18446744069414580225       # n-th root of unity
    w_inv=4503599626321920       # modular inverse of n-th root of unity
else:
    logn=12                      # log_2(polynomial size)
    log2n=logn+1
    n=2**logn
    q=18446744069414584321       # prime
    psi=12021080749084121360     # 2n-th root of unity
    psi_inv=11038142780773479373 # modular inverse of 2n-th root of unity
    w=16810698496665110290       # n-th root of unity
    w_inv=17055549785704794001   # modular inverse of n-th root of unity

# 2n-th root of unity
psi_table     = [1]*n
psi_inv_table = [1]*n
for i in range(1,n):
    psi_table[i]     = (psi_table[i-1]*psi)%q
    psi_inv_table[i] = (psi_inv_table[i-1]*psi_inv)%q

# n-th root of unity
w_table     = [1]*n
w_inv_table = [1]*n
for i in range(1,n):
    w_table[i]     = (w_table[i-1]*w)%q
    w_inv_table[i] = (w_inv_table[i-1]*w_inv)%q

# For testing we used two random polynomials
a = [randint(0,q-1) for i in range(n)]
b = [randint(0,q-1) for i in range(n)]

a_zeropad = a + [0]*n
b_zeropad = b + [0]*n

# We'll use polynomial multiplication to perform sanity check for NTT/INTT

# Step1: Perform simple schoolbook based polynomial multiplication as c = a*b
# Step2: Perform NTT-based polynomial multiplication
#         * zero-pad a and b
#         * perform 2n-pt NTT to a and b
#         * perform coefficient-multiplication between NTT(a) and NTT(b)
#         * perform 2n-pt INTT to c
# Step3: Perform simple schoolbook based polynomial multiplication in ring x^n+1 as c = a*b mod x^n+1
# Step4: Perform MNTT-based polynomial multiplication in ring x^n+1 (with NWC)
#         * perform n-pt MNTT to a and b
#         * perform coefficient-multiplication between MNTT(a) and MNTT(b)
#         * perform n-pt MINTT to c

# ------------------------------- Step1: schoolbook multiplication
c = [0]*(2*n)
for i,ai in enumerate(a):
    for j,bi in enumerate(b):
        c[i+j] = (c[i+j] + ai*bi) % q

# ------------------------------- Step2: NTT-based multiplication
# NTT-based multiplication using OP1
a_ntt1= FNTT_DIT_NR(a_zeropad,psi_table,q)
b_ntt1= FNTT_DIT_NR(b_zeropad,psi_table,q)
c_ntt1= [ai*bi % q for ai,bi in zip(a_ntt1,b_ntt1)]
c_pol1= INTT_DIF_RN(c_ntt1,psi_inv_table,q)

# NTT-based multiplication using OP2
a_ntt2= FNTT_DIF_NR(a_zeropad,psi_table,q)
b_ntt2= FNTT_DIF_NR(b_zeropad,psi_table,q)
c_ntt2= [ai*bi % q for ai,bi in zip(a_ntt2,b_ntt2)]
c_pol2= INTT_DIT_RN(c_ntt2,psi_inv_table,q)

# NTT-based multiplication using OP3
a_ntt3= FNTT_DIT_NR(a_zeropad,psi_table,q)
b_ntt3= FNTT_DIT_NR(b_zeropad,psi_table,q)
c_ntt3= [ai*bi % q for ai,bi in zip(a_ntt3,b_ntt3)]
c_pol3= INTT_DIT_RN(c_ntt3,psi_inv_table,q)

# NTT-based multiplication using OP4
a_ntt4= FNTT_DIF_NR(a_zeropad,psi_table,q)
b_ntt4= FNTT_DIF_NR(b_zeropad,psi_table,q)
c_ntt4= [ai*bi % q for ai,bi in zip(a_ntt4,b_ntt4)]
c_pol4= INTT_DIF_RN(c_ntt4,psi_inv_table,q)

# NTT-based multiplication using OP5
a_ntt5= FNTT_DIT_NR(a_zeropad,psi_table,q); a_ntt5 = arr_reverse(a_ntt5,log2n)
b_ntt5= FNTT_DIT_NR(b_zeropad,psi_table,q); b_ntt5 = arr_reverse(b_ntt5,log2n)
c_ntt5= [ai*bi % q for ai,bi in zip(a_ntt5,b_ntt5)]
c_pol5= INTT_DIT_NR(c_ntt5,psi_inv_table,q); c_pol5 = arr_reverse(c_pol5,log2n)

# NTT-based multiplication using OP6
a_ntt6= FNTT_DIF_NR(a_zeropad,psi_table,q); a_ntt6 = arr_reverse(a_ntt6,log2n)
b_ntt6= FNTT_DIF_NR(b_zeropad,psi_table,q); b_ntt6 = arr_reverse(b_ntt6,log2n)
c_ntt6= [ai*bi % q for ai,bi in zip(a_ntt6,b_ntt6)]
c_pol6= INTT_DIF_NR(c_ntt6,psi_inv_table,q); c_pol6 = arr_reverse(c_pol6,log2n)

# NTT-based multiplication using OP7
a_ntt7= FNTT_DIT_NR(a_zeropad,psi_table,q); a_ntt7 = arr_reverse(a_ntt7,log2n); a_ntt7 = arr_reorder(a_ntt7)
b_ntt7= FNTT_DIT_NR(b_zeropad,psi_table,q); b_ntt7 = arr_reverse(b_ntt7,log2n); b_ntt7 = arr_reorder(b_ntt7)
c_ntt7= [ai*bi % q for ai,bi in zip(a_ntt7,b_ntt7)]
c_pol7= FNTT_DIT_NR(c_ntt7,psi_table,q); c_pol7 = arr_divbyn(c_pol7,2*n,q); c_pol7 = arr_reverse(c_pol7,log2n)

# NTT-based multiplication using OP8
a_ntt8= FNTT_DIF_NR(a_zeropad,psi_table,q); a_ntt8 = arr_reverse(a_ntt8,log2n); a_ntt8 = arr_reorder(a_ntt8)
b_ntt8= FNTT_DIF_NR(b_zeropad,psi_table,q); b_ntt8 = arr_reverse(b_ntt8,log2n); b_ntt8 = arr_reorder(b_ntt8)
c_ntt8= [ai*bi % q for ai,bi in zip(a_ntt8,b_ntt8)]
c_pol8= FNTT_DIF_NR(c_ntt8,psi_table,q); c_pol8 = arr_divbyn(c_pol8,2*n,q); c_pol8 = arr_reverse(c_pol8,log2n)

# Verify if NTT-based and SB-based methods generate the same result
for n1,n2,n3,n4,n5,n6,n7,n8,s in zip(c_pol1,c_pol2,c_pol3,c_pol4,c_pol5,c_pol6,c_pol7,c_pol8,c):
    if (n1 != s) or (n2 != s) or (n3 != s) or (n4 != s) or (n5 != s) or (n6 != s) or (n7 != s) or (n8 != s):
        print("NTT/INTT sanity check: FAILED!")
        break
print("NTT/INTT sanity check: PASSED...")

# ------------------------------- Step3: schoolbook multiplication in polynomial ring x^n+1
d = [0]*(2*n)
for i,ai in enumerate(a):
    for j,bi in enumerate(b):
        d[i+j] = (d[i+j] + ai*bi) % q
for i in range(n):
    d[i] = (d[i] - d[i + n]) % q
d = d[0:n]

# ------------------------------- Step4: MNTT-based multiplication in polynomial ring x^n+1
a_mntt1= MFNTT_DIT_NR(a,psi_table,q) 
b_mntt1= MFNTT_DIT_NR(b,psi_table,q)
d_mntt1= [ai*bi % q for ai,bi in zip(a_mntt1,b_mntt1)]
d_pol1 = MINTT_DIF_RN(d_mntt1,psi_inv_table,q)

# Verify if MNTT-based and SB-based methods generate the same result
for m1,s in zip(d_pol1,d):
    if (m1 != s):
        print("MNTT/MINTT sanity check: FAILED!")
        break
print("MNTT/MINTT sanity check: PASSED...")

# ------------------------------- Write these files into txt so we can use them to perform the same operations using sage

# Write parameters to txt
fp = open("ntt_sanity_check/parameters.txt","w")

fp.write(str(n)+"\n")
fp.write(str(q)+"\n")

# Write polynomials to txt
fa = open("ntt_sanity_check/a.txt","w")
fb = open("ntt_sanity_check/b.txt","w")
fc = open("ntt_sanity_check/c.txt","w")
fd = open("ntt_sanity_check/d.txt","w")

for ai,bi,di in zip(a,b,d):
    fa.write(str(ai)+"\n")
    fb.write(str(bi)+"\n")
    fd.write(str(di)+"\n")
for ci in c:
    fc.write(str(ci)+"\n")

fa.close()
fb.close()
fc.close()
fd.close()
fp.close()

print("Files for sage script are generated...")
