#!/usr/bin/env python3

# This is a guess the number game.


import random

print("Hello. What is your name?")

name=input()
min_num=1
max_num=20

ran_num=random.randint(min_num,max_num)

print("Well, {}, I am thinking of a number between {} and {}".format(name, min_num, max_num))

num_guesses=0

for tries in range(1,7):
    num_guesses+=1
    print("Take a Guess")
    guess=int(input())
    if guess>ran_num:
        print("Your guess is too high.")
    elif guess<ran_num:
        print("Your guess is too low.")
    else:
        break

if guess == ran_num:
    if tries==1:
        print("Good job, {}! You guessed my number in 1 guess".format(name))
    else:
        print("Good job, {}! You guessed my number in {} guesses!".format(name, tries))
else:
    print("Nope. The number I was thinking of was {}".format(ran_num))

print(ran_num)
