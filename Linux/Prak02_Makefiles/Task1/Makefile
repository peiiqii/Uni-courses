# Variables
CC := g++
AR := ar
CFLAGS := 
LDFLAGS :=
LDLIBS:= -lstdc++

# Silent command execution
SILENT := @
ECHO := echo

# Modules and their corresponding source and object files
MODULES = main 
SRC = $(MODULES:%=%.cpp)
OBJ = $(SRC:%.cpp=%.o)

# Default target
all: main

# Rule to build the main executable
main: hello_world.a $(OBJ)
	$(SILENT) $(ECHO) "--- Linking $@ ---"
	$(SILENT) $(CC) $^ -o $@ $(LDFLAGS)

# Rule to create the static library
%.a: %.o
	$(SILENT) $(ECHO) "--- Archiving $@ ---"
	$(SILENT) $(AR) rcs $@ $^
	$(SILENT) rm -f $<

# Rule to compile .cpp files into .o files
%.o: %.cpp
	$(SILENT) $(ECHO) "--- Compiling $< ---"
	$(SILENT) $(CC) -c $(CFLAGS) $< -o $@

# Clean rule
.PHONY: clean
clean:
	$(SILENT) $(ECHO) "--- Cleaning up ---"
	$(SILENT) rm -f *.o *.a main
