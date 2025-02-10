#include <stdio.h>
#include <sys/stat.h>
#include <errno.h>
#include <unistd.h>

static const char* makeFileText =
"CC := cc\n"
"CFLAGS := -Wall -Wextra -g -std=c99\n"
"LIBS := \n"
"ALLFLAGS := $(CFLAGS) $(LIBS)\n"

"OBJDIR := obj\n"
"SRCS := $(wildcard *.c)\n"
"OBJS := $(patsubst %.c, $(OBJDIR)/%.o, $(SRCS))\n"

"OUT = bot\n"

"$(OUT): $(OBJS)\n"
	"$(CC) $(ALLFLAGS) -o $@ $^\n"

"$(OBJDIR)/%.o: %.c | $(OBJDIR)\n"
	"$(CC) $(CFLAGS) -c -o $@ $< \n"

"clean:\n"
	rm -rf $(OBJDIR)
	rm $(OUT)
	mkdir $(OBJDIR)

.PHONY: clean

int
main(int argc, char** argv) {
    if (argc == 1) {
        puts("cproj <directory>");
        return -1;
    }

    const char* dirName = argv[2];
    const int result = mkdir(dirName, 0700);
    if (result == EEXIST) {
        puts("Directory already exists");
        return -1;
    }

    chdir(dirName);

    FILE* makeFile = fopen("Makefile", "w");
    if (makeFile == NULL) {
        puts("Failed to create Makefile");
        return -1;
    }


}
