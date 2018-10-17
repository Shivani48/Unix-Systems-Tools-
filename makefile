all:program3
program3: program3.o hidden.o bomb.o
	gcc -g program3.o bomb.o hidden.o -o program3
program3.o: program3.c
	gcc -g -c program3.c
bomb.o: bomb.c
	gcc -g -c bomb.c
memcheck: program3
	valgrind --leak-check=full -v ./program3
bscript:program3 bashscript.sh
	gdb program3
	chmod +x bashscript.sh
	./bashscript.sh phase1.key phase2.key phase3.key phase4.key phase5.key phase6.key bomb_defused.log
clean:
	cd keys && mv *.key ../
	rm -rf program3.o bomb.o program3
	rm -rf keys
submit:
	git status
	git commit -a -m "Final commit"
	git push
