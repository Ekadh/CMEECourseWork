# Author: Ekadh er925@ic.ac.uk
# Date: Oct 2025
# Desc: Basic input/output 3: Using pickle to dump a dictionary

#Creates a dictionary
my_dict = {"a key" : 10, "another key" : 11}

import pickle

f = open('../data/testp.p', 'wb') #The b is for accepting binary files
pickle.dump(my_dict, f)
f.close()

#Loads the data again, prints the dictionary stored in the file
f = open('../data/testp.p', 'rb')
another_dict = pickle.load(f)
f.close()

print(another_dict)

