
# Read parameters
fp = open('ntt_sanity_check/parameters.txt','r')

(n,q) = fp
n = int(n)
q = int(q)

# Generate polynomial ring
R = PolynomialRing(GF(q),'x')
x = R.gen()
fx = x^n + 1
fx2= x^(2*n) + 1

# Read Python-generate polynomials
fa = open('ntt_sanity_check/a.txt','r')
fb = open('ntt_sanity_check/b.txt','r')
fc = open('ntt_sanity_check/c.txt','r')
fd = open('ntt_sanity_check/d.txt','r')
a,b,c,d = [],[],[],[]
for ai,bi,di in zip(fa,fb,fd):
    a.append(int(ai))
    b.append(int(bi))
    d.append(int(di))
for ci in fc:
    c.append(int(ci))
    
a_pol,b_pol,c_pol,d_pol = 0,0,0,0
for i,(ai,bi,di) in enumerate(zip(a,b,d)):
    a_pol = a_pol + ai*x^i
    b_pol = b_pol + bi*x^i
    d_pol = d_pol + di*x^i
for i,ci in enumerate(c):
    c_pol = c_pol + ci*x^i

# Perform schoolbook multiplication
c_pol_t = (a_pol * b_pol); c_pol_t = list(c_pol_t) # multiply two polynomials
c_pol_s = 0
for i,ci in enumerate(c_pol_t): # reduce coefficients in Z_q
    c_pol_s = c_pol_s + (ci % q)*x^i

if (c_pol == c_pol_s):
    print("NTT/INTT sanity check: PASSED...")
else:
    print("NTT/INTT sanity check: FAILED!")

# Perform schoolbook multiplication in polynomial ring x^n+1
d_pol_s = (a_pol * b_pol) % fx

if (d_pol == d_pol_s):
    print("MNTT/MINTT sanity check: PASSED...")
else:
    print("MNTT/MINTT sanity check: FAILED!")
