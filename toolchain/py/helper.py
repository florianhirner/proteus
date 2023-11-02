
# Modular inverse of an integer
def egcd(a, b):
    if a == 0:
        return (b, 0, 1)
    else:
        g, y, x = egcd(b % a, a)
        return (g, x - (b // a) * y, y)

def modinv(a, m):
    g, x, y = egcd(a, m)
    if g != 1:
        raise Exception('Modular inverse does not exist')
    else:
        return x % m

# Bit-Reverse integer
def int_reverse(a,loga):
    b = ('{:0'+str(loga)+'b}').format(a)
    return int(b[::-1],2)

# Bit-Reverse array
def arr_reverse(a,logn):
    b = [0]*len(a)
    for i in range(len(a)):
        i_rev = int_reverse(i,logn)
        b[i_rev] = a[i]
    return b

# Re-order array as [0,1,...,n-2,n-1] --> [0,n-1,...,2,1]
def arr_reorder(a):
    b = [a[0]] + list(reversed(a[1:]))
    return b

# Bit-reverse and Re-order array
def arr_reorder_2(a,n):
    b = arr_reverse(a,n)
    c = arr_reorder(b)
    return c

# Div-by-n array
def arr_divbyn(a,n,q):
    n_inv = modinv(n,q)
    b = [(i*n_inv)%q for i in a]
    return b