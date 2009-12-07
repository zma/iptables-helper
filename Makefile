
all:iptables-helper

iptables-helper:
	$(CC) -Wall src/*.c -o iptables-helper

clean:
	rm -f iptables-helper
