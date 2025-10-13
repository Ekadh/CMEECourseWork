## Writing stuff into files, in this case lists ##
list_to_save = range(100)

f = open('../sandbox/testout.txt', 'w') #testout.txt didn't exist yet, but was made to export the list_to_save items
for i in list_to_save:
    f.write(str(i) + '\n')

f.close()