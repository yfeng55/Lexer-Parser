#!/bin/sh

if [ ! -f calc2.y -o ! -f calc2.l ] ; then
  echo No target.
  exit
fi

bison -d calc2.y
flex calc2.l
g++ lex.yy.c calc2.tab.c
# rm lex.yy.c $1.tab.h $1.tab.c a.out




# TODOS:

# variable declaration ***
	# 15 char limit ***

# variable assignment ***

# allow program to accept multiple commands (include recursive grammar rule for root) ***

# store declared variables in a hashmap ***

# modify variable values using assignment statements ***

# implement print command ***

# fix variable assignments to allow for expressions ***

# fix nested comments ***

# print error for multiline commands (error1.txt) ***



# make language case insensitive  


