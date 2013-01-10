CC=clang # or gcc

FRAMEWORKS:= -framework Foundation
LIBRARIES:= -lobjc
FEATURES:= -fobjc-arc

SOURCE=Person.m main.m

CFLAGS=-Wall -Werror -g $(SOURCE)
LDFLAGS=$(LIBRARIES) $(FEATURES) $(FRAMEWORKS)
OUT=-o main

all:
	$(CC) $(CFLAGS) $(LDFLAGS) $(OUT)
