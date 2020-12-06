myHash: myHash.o sha2.o
	cc -o myHash myHash.o sha2.o

myHash.o: myHash.c myHash.h sha2.h
	cc -c myHash.c

sha2.o: sha2.c sha2.h
	$(CC) -DTEST_VECTORS -c $<

clean:
	-rm -rf *.o myHash

