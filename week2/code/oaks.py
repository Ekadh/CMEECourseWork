## Script to find only oak trees from a list of tree species using different methods

taxa = [ 'Quercus robur',
         'Fraxinus excelsior',
         'Pinus sylvestris',
         'Quercus cerris',
         'Quercus petraea',
       ]

## Using FOR loops ##
def is_an_oak(name):
    return name.lower().startswith('quercus ')

oak_loops = set()
for species in taxa:
    if is_an_oak(species):
        oak_loops.add(species)

print(oak_loops)


## Using LIST COMPREHENSIONS ##
oaks_lc = set([species for species in taxa if is_an_oak(species)])
print(oaks_lc)

## Setting UPPERCASE with FOR loops ##
oak_loops = set()
for species in taxa:
    if is_an_oak(species):
        oak_loops.add(species.upper())

print(oak_loops)

## Setting UPPERCASE using LIST COMPRE ##

oak_lc = set([species.upper() for species in taxa if is_an_oak(species)])
print(oaks_lc)





