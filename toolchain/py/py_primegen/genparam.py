from generate_prime import *
from helper import *
from random import randint


# Check if input w is m-th (could be n or 2n) primitive root of unity of q
def is_primitive_root(w,m,q):
    if w == 0:
        return False
    elif pow(w,m//2,q) == (q-1):
        return True
    else:
        return False

# Returns a proper NTT-friendly prime (large to small)
def get_proper_prime_LtoS(n,q_bitsize,prime_list):
    # large prime to small prime
    factor = 2*n
    value  = (1<<q_bitsize) - factor + 1
    lbound = (1<<(q_bitsize-1))
    while(value > lbound):
        if (is_prime(value) == True) and not(value in prime_list):
            return value
        else:
            value = value - factor
    raise Exception("Failed to find a proper prime.")

# Returns a proper NTT-friendly prime (small to large)
def get_proper_prime_StoL(n,q_bitsize,prime_list):
    # small prime to large prime
    factor = 2*n
    value  = (1<<(q_bitsize-1)) - factor + 1
    lbound = (1<<(q_bitsize-0))
    while(value < lbound):
        if (is_prime(value) == True) and not(value in prime_list):
            return value
        else:
            value = value + factor
    raise Exception("Failed to find a proper prime.")
   
# Returns a m-th primitive root of q (if there is any)
def find_primitive_root(m,q):
    g = (q-1)//m

    if (q-1) != g*m:
        return False,0

    attempt_ctr = 0
    attempt_max = 100

    while(attempt_ctr < attempt_max):
        a = randint(2,q-1)
        b = pow(a,g,q)
        # check
        if is_primitive_root(b,m,q):
            return True,b
        else:
            attempt_ctr = attempt_ctr+1

    return False,0

# Returns the minimum m-th primitive root of q (if there is any)
def find_min_primitive_root(m,q):
    p_found, g = find_primitive_root(m,q)

    if not(p_found):
        return False,0

    g_sq = (g*g) % q
    cg   = g

    for i in range(m):
        if (cg < g):
            g = cg
        cg = (cg*g_sq) % q

    return True,g

# Generate necessary BFV parameters given n and log(q)
def generate_params(n,q_bitsize,q_prev=[],q=None):
    q_all  = []
    np_all = []

    # if q is not given
    if q == None:
        for idx,logq in enumerate(q_bitsize):
            p_found = False
            while (not(p_found)):
                # first, find a proper prime
                q = get_proper_prime_StoL(n,logq,q_all)
                # then find primitive root
                #p_found, psi = find_primitive_root(2*n,q)
                p_found, psi = find_min_primitive_root(n,q)
            psiv= modinv(psi,q)
            w   = pow(psi,2,q)
            wv  = modinv(w,q)
            q_all.append(q); np_all.append([psi,psiv,w,wv])

            #print(idx) # for debugging

        return q_all,np_all
    # if q is given
    else:
        for q_ in q:
            if q_ % (2*n) != 1:
                raise Exception("Given coefficient modulus does not meet requirement for NTT.")
            else:
                q_found, psi = find_min_primitive_root(n,q_)
                if not(q_found):
                    raise Exception("Cannot find primitive root for given coefficient modulus")
                else:
                    psiv= modinv(psi,q_)
                    w   = pow(psi,2,q_)
                    wv  = modinv(w,q_)
                q_all.append(q_); np_all.append([psi,psiv,w,wv])
        return q_all,np_all

# ----------------------------------------------------------

num_of_p  = 8  # number of primes
ntt_type  = 2  # 1: for NTT/INTT, 2: for MNTT/MINTT

logq      = 64 # bit-size of prime
logn      = 12 # log_2 of polynomial degree

n         = 2**logn 
q_bitsize = [logq]*num_of_p
q         = None

# q         = [65537] # 16
# q         = [8380417] # 23
# q         = [134246401] # 28
q         = [18446744069414584321] # 64

q_all, np_all = generate_params(ntt_type*n,q_bitsize,q=q) #[[psi,psiv,w,wv], ...]
#q_all, np_all = generate_params(n,q_bitsize,[],q_all) #[[psi,psiv,w,wv], ...]

q, w, w_inv, psi, psi_inv = [], [], [], [], []

if ntt_type == 1:
    for ql,npl in zip(q_all,np_all):
        q.append(ql)
        w.append(npl[0])
        w_inv.append(npl[1])
        print("({}-bit) q:{}, w:{}, w_inv{}".format(len(bin(ql))-2,ql,npl[0],npl[1]))
else:
    for ql,npl in zip(q_all,np_all):
        q.append(ql)
        psi.append(npl[0])
        psi_inv.append(npl[1])
        w.append(npl[2])
        w_inv.append(npl[3])
        print("({}-bit) q:{}, w:{}, w_inv:{}, psi:{}, psi_inv:{}".format(len(bin(ql))-2,ql,npl[2],npl[3],npl[0],npl[1]))
