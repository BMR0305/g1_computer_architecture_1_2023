import math

for i in range(0,10):
    Lx = 75
    argumento = (2*math.pi*i)/Lx
    seno = round(math.sin(argumento)*100)
    print(seno)
