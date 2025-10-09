## Storing objects and dumping into new files ##

my_dict = {"a key" : 10, "another key" : 11}

import pickle

f = open('../sandbox/testp.p', 'wb') #The b is for accepting binary files
pickle.dump(my_dict, f)
f.close()

f = open('../sandbox/testp.p', 'rb')
another_dict = pickle.load(f)
f.close()

print(another_dict)

