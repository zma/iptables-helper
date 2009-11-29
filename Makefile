all:
	gcc -Wall src/*.c -o iptables-helper
clean:
	rm -f iptables-helper