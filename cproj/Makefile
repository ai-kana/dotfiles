CC := cc
CFLAGS := -Wall -Wextra -g -std=c99
LIBS := 
ALLFLAGS := $(CFLAGS) $(LIBS)

OBJDIR := obj
SRCS := $(wildcard *.c)
OBJS := $(patsubst %.c, $(OBJDIR)/%.o, $(SRCS))

OUT = bot

$(OUT): $(OBJS)
	$(CC) $(ALLFLAGS) -o $@ $^

$(OBJDIR)/%.o: %.c | $(OBJDIR)
	$(CC) $(CFLAGS) -c -o $@ $< 

clean:
	rm -rf $(OBJDIR)
	rm $(OUT)
	mkdir $(OBJDIR)

.PHONY: clean
