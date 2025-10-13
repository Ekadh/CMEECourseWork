birds = ( ('Passerculus sandwichensis','Savannah sparrow',18.7),
          ('Delichon urbica','House martin',19),
          ('Junco phaeonotus','Yellow-eyed junco',19.5),
          ('Junco hyemalis','Dark-eyed junco',19.6),
          ('Tachycineata bicolor','Tree swallow',20.2),
         )

#(1) Write three separate list comprehensions that create three different
# lists containing the latin names, common names and mean body masses for
# each species in birds, respectively. 

latin_names = [row[0] for row in birds]
common_names = [row[1] for row in birds]
body_mass = [row[2] for row in birds]

print("Latin names: ", latin_names)
print("Common names: ", common_names)
print("Body mass: ", body_mass)

# (2) Now do the same using conventional loops (you can choose to do this 
# before 1 !). 

## It can all just be done in one for loop, so I've just included the one, but they can all be separate and acheive the same function as well.

latin_names = []
common_names = []
body_mass = []
for latin, common, mass in birds:
    latin_names.append(latin)
    common_names.append(common)
    body_mass.append(mass)


print("Latin names: ", latin_names)
print("Common names: ", common_names)
print("Body mass: ", body_mass)

# A nice example out out is:
# Step #1:
# Latin names:
# ['Passerculus sandwichensis', 'Delichon urbica', 'Junco phaeonotus', 'Junco hyemalis', 'Tachycineata bicolor']
# ... etc.
 