"""
Flip-a-Coin.py
Simple Programs

Copyright (C) 2018 Ethan Dye. All rights reserved.
"""

import random

print("Welcome to Flip a Coin!")
flips = input("How many coins do you want flipped? ")
tailsStreak = 0
tailsStreakMax = 0
headsStreak = 0
headsStreakMax = 0


def updateTailsStreak():
    """Updates tails streak"""
    global tailsStreak
    global tailsStreakMax
    if tailsStreak >= tailsStreakMax:
        tailsStreakMax = tailsStreak


def updateHeadsStreak():
    """Update heads streak"""
    global headsStreak
    global headsStreakMax
    if headsStreak >= headsStreakMax:
        headsStreakMax = headsStreak


def flipACoin(flips):
    """Flips a coin"""
    global tailsStreak
    global tailsStreakMax
    global headsStreak
    global headsStreakMax
    heads = 0
    tails = 0

    for _ in range(0, flips):
        result = random.randint(0, 1)

        if result == 1:
            heads = heads + 1
            headsStreak = headsStreak + 1
            print("Heads")
            updateTailsStreak()
            tailsStreak = 0

        else:
            tails = tails + 1
            tailsStreak = tailsStreak + 1
            print("Tails")
            updateHeadsStreak()
            headsStreak = 0

    updateHeadsStreak()
    updateTailsStreak()
    print("Flipped " + str(heads) + " heads and " + str(tails) + " tails!")
    print("The longest streak of heads in a row was: " + str(headsStreakMax))
    print("The longest streak of tails in a row was: " + str(tailsStreakMax))


flipACoin(flips)
