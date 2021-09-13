#SIR
'''python
import numpy as np, matplotlib.pyplot as plt

beta, gamma = 0.2, 1./10
N = 1000
I, R = 1, 0
S = N - I - R

res = []
for i in range(160):
    diff_I = beta * S * I / N
    S -= diff_I
    diff_R = gamma*I
    R += diff_R
    I += diff_I - diff_R
    res.append ((S, I, R))
    
Ss, Is, Rs = map(np.array, zip(*res))

fig, ax = plt.subplots()
ax.plot(Ss/1000, 'b', label='Susceptibility')
ax.plot(Is/1000, 'y', label='Infected')
ax.plot(Rs/1000, 'g', label='Recovered')
ax.legend()
'''




def run_sim(f, steps, *x):
    res = [x]
    for t in range(steps):
        x = f(x, t, res)
        res.append(x)
    return res

def calc_day(x, t, hist):
    S, I, R, _ = x
    dI = beta * S * I / N
    recovered_time = 14
    dR = hist[-recovered_time][3] if t >= recovered_time else 0
    return S-dI, I+dI-dR, R+dR, dI
res = run_sim(calc_day, 160, N-1-0, 1, 0, 0)

Ss, Is, Rs, cases = map(np.array, zip(*res))
plt.plot(Is)
plt.title(f'Cases/day - total {cases.sum():.0f} cases')




