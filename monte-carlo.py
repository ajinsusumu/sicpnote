import random

def pi(n):
    pts = ((random.random(),random.random()) for _ in range(n))
    incircle = (1 for (x,y) in pts if (x**2+y**2)**.5 < 1)
    return sum(incircle)/ n

pi1 = lambda n: sum(
    1 for _ in range(n) if (random.random()**2+random.random()**2)**.5 < 1
)/n
