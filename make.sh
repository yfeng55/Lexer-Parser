#!/bin/sh

# rm lex.yy.c $1.tab.h $1.tab.c a.out

if [ ! -f $1.y -o ! -f $1.l ] ; then
  echo No target.
  exit
fi

bison -d $1.y
flex $1.l
g++ lex.yy.c $1.tab.c




# TODOS:

# variable declaration ***
	# 15 char limit ***

# variable assignment ***

# allow program to accept multiple commands (include recursive grammar rule for root) ***


# store declared variables in a hashmap
