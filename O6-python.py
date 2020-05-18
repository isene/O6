#!/usr/bin/env python

# Python script is courtesy of an anonymous contributor after posting
# my scripts to lobste.rs
# (https://lobste.rs/s/wxshiy/comparison_some_programming_languages)

import random

def d6(): return random.randint(1,6)

def o6():
  rolls = [d6()]
  while ((rolls[0] == 6) and (rolls[-1] in [4,5,6])): rolls.append(d6())
  while ((rolls[0] == 1) and (rolls[-1] in [1,2,3])): rolls.append(d6())

  rollpairs = zip(rolls[:-1], rolls[1:])
  critical = any((r1, r2) == (6, 6) for (r1, r2) in rollpairs)
  fumble   = any((r1, r2) == (1, 1) for (r1, r2) in rollpairs)

  modifier = 0
  if (rolls[0] == 6): modifier = +len(rolls[1:-1])
  if (rolls[0] == 1): modifier = -len(rolls[1:-1])

  result = rolls[0] + modifier

  mod_string = " critical" if critical else (" fumble" if fumble else "")
  print("Result: %d%s (Rolls: %s)" % (result, mod_string, rolls))

for i in range(30):
  o6()
