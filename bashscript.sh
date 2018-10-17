#!/bin/bash
if [ -e $1 ] && [ -e $2 ] && [ -e $3 ] && [ -e $4 ] && [ -e $5 ] && [ -e $6 ]
then
	cat $1 >> bomb_defused.log
	cat $2 >> bomb_defused.log
	cat $3 >> bomb_defused.log
	cat $4 >> bomb_defused.log
	cat $5 >> bomb_defused.log
	cat $6 >> bomb_defused.log
fi
if [ ! -d "$keys" ]
then
	mkdir keys
fi
mv $1 keys
mv $2 keys
mv $3 keys
mv $4 keys
mv $5 keys
mv $6 keys
