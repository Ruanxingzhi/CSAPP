f = [0,1,1]

for i in range(3,100):
    f.append(f[-2]+f[-1])
    print(f'f[{i}]={f[i]}')