require random.fs
utime drop seed !
  
true Value f
false Value flag
s" " Value string

: D6 6 Random 1 + ;
: D+- 0 Begin D6 Dup 6 = If f If true To flag Else true To f Endif Else false To f Endif 3 < While 1+ Repeat ;
: D+ D+- + flag If s" Critical " Type Endif ;
: D- D+- - flag If s" Fumble " Type Endif ;

: O6 D6 Dup Dup 6 = If D+ Else 1 = If D- Endif Endif . ;

O6
