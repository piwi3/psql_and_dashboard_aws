# %% codecell
import pandas as pd
import numpy as np
import os

# %% codecell
os.getcwd()
path_base = "/Users/philipwitte/Documents/spiced_projects/fenugreek-student-code/week05/data/northwind/"
files = os.listdir(path_base)
files = [path_base + s for s in files]
for i, file in enumerate(os.listdir(path_base)):
    print(i, " -> ", file)
# %% markdown
# # Data exploration
# %% codecell
i = 10
print(files[i])
# %% codecell
df = pd.read_csv(files[i])
df.head(3)

# %% codecell
df.info()
