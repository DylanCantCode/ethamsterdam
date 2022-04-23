import os
base_directory = 'abstractions-master/ethereum'

def get_abstractions(dir, abstraction_path):
    for filename in os.listdir(dir):
        f = os.path.join(dir, filename)
        if os.path.isfile(f):
            print(abstraction_path + '.' + filename)
        if os.path.isdir(f):
            get_abstractions(f, abstraction_path + '.' + filename)

get_abstractions(base_directory, '')
