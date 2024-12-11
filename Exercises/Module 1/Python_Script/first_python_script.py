#!/bin/python3

import os
option = 0

#The options displayed on the following menu are meant to open and edit the file "names.txt"
def menu():
    print ("Choose one of the following options: ")
    print ("1. Read and display names")
    print ("2. Add a new name")
    print ("3. Exit")

menu ()
option = input ()

#Each menu option corresponds to the specific action
if option == "1":
    with open("names.txt", "r") as file:
        for line in file:
            print ("Hello,", line.strip()) #This option will display the names that are inside the file "names.txt"
elif option == "2":
    with open("names.txt", "a") as file:
        file.write(input())
        print ("You added a new name to the file") # This option will add a new name, inserted by the user, into the file
elif option == "3":
    print ("See you next time") #This option exits the menu
