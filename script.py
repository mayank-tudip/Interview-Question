import os as o
file_name = "./datastructure.sh"

n=input("Enter the name of folder: ")

directory = "/home/mayankyadav/" + n

o.system(file_name + " " + directory)