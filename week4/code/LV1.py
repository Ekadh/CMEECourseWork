r = 1.
a = 0.1
z = 1.5
e = 0.75
t = np.linspace(0, 15, 1000)

R0 = 10
C0 = 5 
RC0 = np.array([R0, C0])

def dCR_dt(pops, t = 0):
    R = pops[0]
    C = pops[1]
    dRdt = r * R - a * R * C
    dCdt = -z * C + e * a * R * C
    return np.array([dRdt, dCdt])