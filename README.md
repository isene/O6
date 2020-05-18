# O6
Open-ended D6 rolls implemented in various programming languages.

It works like this: You roll a six-sided dice. If a 6 is rolled on the dice, roll the dice again. Then, if you roll 4–6, add 1 to the roll and roll the dice again, etc. If a 1 is rolled on the dice, roll the dice again. If 1–3 is rolled, subtract 1 from the roll and roll the dice again, etc. Any two consequtive 1s indicates a "fumble" while two consequtive 6s indicates a "critical" roll.

There is no limit to the result you can get with an open ended dice roll, including negative results such as –5.

See [the Amar RPG wbsite](http:d6gaming.org/index.php/The_Character#Open_Ended_Rolls) for more.

So far it seems to me that Forth is the most compact code, while Vimscript and Fortran are the most verbose, with Julia and Nim perhaps being the most humanly readable - although I prefer to program in Ruby and FOCAL.
