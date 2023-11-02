
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

# GCD of two integers
def gcd(n1, n2):
    a = n1
    b = n2
    while b != 0:
        a, b = b, a % b
    return a

# Bit-Reverse integer
def int_reverse(a,n):
    b = ('{:0'+str(n)+'b}').format(a)
    return int(b[::-1],2)
