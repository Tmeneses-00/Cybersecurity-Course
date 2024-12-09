#!/bin/python3

import os
option = 0

def menu():
    print ("Choose one of the following options: ")
    print ("1. Read and display names")
    print ("2. Add a new name")
    print ("3. Exit")

menu ()
option = input ()

if option == "1":
    with open("names.txt", "r") as file:
        for line in file:
            print ("Hello,", line.strip())
elif option == "2":
    with open("names.txt", "a") as file:
        file.write(input())
        print ("You added a new name to the file")
elif option == "3":
    print ("See you next time")
