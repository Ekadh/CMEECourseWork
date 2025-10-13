# Average UK Rainfall (mm) for 1910 by month
# http://www.metoffice.gov.uk/climate/uk/datasets
rainfall = (('JAN',111.4),
            ('FEB',126.1),
            ('MAR', 49.9),
            ('APR', 95.3),
            ('MAY', 71.8),
            ('JUN', 70.2),
            ('JUL', 97.1),
            ('AUG',140.2),
            ('SEP', 27.0),
            ('OCT', 89.4),
            ('NOV',128.4),
            ('DEC',142.2),
           )

# (1) Use a list comprehension to create a list of month,rainfall tuples where
# the amount of rain was greater than 100 mm.

hundred_mm = [i for i in rainfall if i[1] > 100]

print("Months and rainfall amounts where rainfall has exceeded 100mm in the UK in 1910: ", hundred_mm)
 
# (2) Use a list comprehension to create a list of just month names where the
# amount of rain was less than 50 mm. 

fifty_mm = [i[0] for i in rainfall if i[1] < 50]

print("Months that received less than 50mm of rainfall in the UK in 1910: ", fifty_mm)

# (3) Now do (1) and (2) using conventional loops (you can choose to do 
# this before 1 and 2 !). 

## (1) using conventional for loops

hundred_mm = []
for i in rainfall:
    if i[1] > 100:
        hundred_mm.append(i)

print("Months and rainfall amounts where rainfall has exceeded 100mm in the UK in 1910: ", hundred_mm)

## (2) using conventional for loops

fifty_mm = []
for i in rainfall:
    if i[1] < 50:
        fifty_mm.append(i[0])

print("Months that received less than 50mm of rainfall in the UK in 1910: ", fifty_mm)

# A good example output is:
#
# Step #1:
# Months and rainfall values when the amount of rain was greater than 100mm:
# [('JAN', 111.4), ('FEB', 126.1), ('AUG', 140.2), ('NOV', 128.4), ('DEC', 142.2)]
# ... etc.

