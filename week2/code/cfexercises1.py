def foo_1(x):
    return x ** 0.5

#foo_1(4)

def foo_2(x,y):
    if x > y:
        return x
    return y

#foo_2(4, 5)

def foo_3(x,y,z):
    if x > y:
        x, y = y, x
    if x > z:
        x, z = z, x
    if y > z:
        y, z = z, y
    return [x, y, z]

#foo_3(7, 8, 2)

def foo_4(x):
    result = 1
    for i in range(1, x + 1):
        result = result * i
    return result

#foo_4(6)

def foo_5(x):
    if x ==1:
        return 1
    return x * foo_5(x - 1) ## Recursive function to calculate factorials

#foo_5(5)

def foo_6(x):
    facto = 1
    while x >= 1:
        facto = facto * x
        x = x-1
    return facto ## Much better factorial code

#foo_6(5)