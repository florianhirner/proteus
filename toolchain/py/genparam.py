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

# Returns a proper NTT-friendly prime
"""
def get_proper_prime(n,q_bitsize,prime_list):
    factor = 2*n
    value  = (1<<q_bitsize) - factor + 1
    lbound = (1<<(q_bitsize-1))
    while(value > lbound):
        if (is_prime(value) == True) and not(value in prime_list):
            return value
        else:
            value = value - factor
    raise Exception("Failed to find a proper prime.")
"""
"""
def get_proper_prime(n,q_bitsize,prime_list):
    factor = 2*n
    value  = (1<<(q_bitsize-1)) - factor + 1
    lbound = (1<<(q_bitsize-0))
    while(value < lbound):
        if (is_prime(value) == True) and not(value in prime_list):
            return value
        else:
            value = value + factor
    raise Exception("Failed to find a proper prime.")
"""

def get_proper_prime_max(ntt_type,n,q_bitsize,prime_list):
    factor = ntt_type*n
    value  = (1<<q_bitsize) - factor + 1
    lbound = (1<<(q_bitsize-1))
    while(value > lbound):
        if (is_prime(value) == True) and not(value in prime_list):
            return value
        else:
            value = value - factor
    
    #raise Exception("Failed to find a proper prime.")
    return -1

def get_proper_prime_min(ntt_type,n,q_bitsize,prime_list):
    factor = ntt_type*n
    value  = (1<<(q_bitsize-1)) - factor + 1
    lbound = (1<<(q_bitsize-0))
    while(value < lbound):
        if (is_prime(value) == True) and not(value in prime_list):
            return value
        else:
            value = value + factor
    
    #raise Exception("Failed to find a proper prime.")
    return -1

# Returns a m-th primitive root of q (if there is any)
def find_primitive_root(m,q):
    g = (q-1)//m

    if (q-1) != g*m:
        return False,0

    attempt_ctr = 0
    attempt_max = 100000

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

# Generate necessary NTT parameters given n and log(q)
def generate_params(n,logq,q_prev=[],q=None):

    # if q is not given
    if q == None:
        p_found = False
        while (not(p_found)):
            # first, find a proper prime
            # q = get_proper_prime_min(2,n,logq,q_prev)
            q = get_proper_prime_max(2,n,logq,q_prev)

            # then find primitive root
            # p_found, psi = find_primitive_root(2*n,q)
            p_found, psi = find_min_primitive_root(2*n,q)

        if q == -1:
            return n,q,0,0,0,0

        psiv= modinv(psi,q)
        w   = pow(psi,2,q)
        wv  = modinv(w,q)
            
        return n,q,psi,psiv,w,wv
    # if q is given
    else:
        if q % (2*n) != 1:
            raise Exception("Given coefficient modulus does not meet requirement for NTT.")
        else:
            q_found, psi = find_primitive_root(2*n,q)
            #q_found, psi = find_min_primitive_root(2*n,q)
            if not(q_found):
                raise Exception("Cannot find primitive root for given coefficient modulus")
            else:
                psiv= modinv(psi,q)
                w   = pow(psi,2,q)
                wv  = modinv(w,q)

        return n,q,psi,psiv,w,wv

# ----------------------------------------------------------
