"""
PigLatinTranslator.py
Simple Programs

Copyright (C) 2018 Ethan Dye. All rights reserved.
"""

print("Welcome to Pig Latin Translator!")


def PigTrans():
    """Translates words into Pig Latin"""
    pyg = "ay"
    original = input("Enter a word:")

    if len(original) > 0 and original.isalpha():
        word = original.lower()
        first = word[0]
        second = word[1].upper()
        new_word = second + word[2:len(word)] + first + pyg
        print(new_word)
    else:
        print("Not a valid word")


def ContCheck():
    """Checks if Python should run PigTrans again"""
    runAgain = input("""
Please type 'continue'
to translate another word
or type 'exit' to close:
""").lower()

    if runAgain == "continue":
        PigTrans()
        ContCheck()
    elif runAgain == "exit":
        exit()
    else:
        print("Please choose to either continue or exit")
        ContCheck()


PigTrans()
ContCheck()
