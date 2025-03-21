import pandas as pd
import numpy as np 

#headings in order 1: Index/Id, 2 title, 3 authors, 4 rating, 5 isbn, 6 isbn13, 7 language,  8 page_count, 
#--9 ratings count, 10 publication, 11 publisher 

df = pd.read_csv("/workspaces/AP-ComputerScience/data/books.csv",sep = ",", header = 0)

print(df)

