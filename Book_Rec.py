import csv

#headings in order 1: Index/Id, title, authors, rating, isbn, isbn13, language, page_count, ratings_count TODO ADD THE REST

with open('/workspaces/AP-ComputerScience/data/books.csv','r') as file:
    reader = csv.reader(file)
    for row in reader:
        length = len(row)