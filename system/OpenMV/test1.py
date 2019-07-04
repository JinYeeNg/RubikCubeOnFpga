fc = []
fc.append((1,1,1))
print(fc)
fc.append((2,3,4))
print(fc)
print(fc[0]+fc[1])
c = tuple(x+y for x, y in zip(fc[0], fc[1]))
print(c)
