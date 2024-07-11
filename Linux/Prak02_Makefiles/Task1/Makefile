CC := g++
AR := ar
CFLAGS :=
LDFLAGS :=
LDLIBS:= -lstdc++
SILENT := @
ECHO := echo

MODULES = main
SRC = $(MODULES:%=%.cpp)
OBJ = $(SRC:%.cpp=%.o)

all: main

%: %.o
	$(SILENT) $(ECHO) "--- Creating $@ ---"
	$(SILENT) $(CC) $^ -o $@ $(LDFLAGS)

%.a: %.o
	$(SILENT) $(ECHO) "--- Static Linking $@ ---"
	$(SILENT) $(AR) -rcs $@ $(CFLAGS) $<
	$(SILENT) rm -f $<

%.o: %.cpp
	$(SILENT) $(ECHO) "--- Compiling $< ---"
	$(SILENT) $(CC) -c $(CFLAGS) $<

main: hello_world.a $(OBJ)
	$(SILENT) $(CC) $^ -o $@ $(LDFLAGS) -L. -l:hello_world.a

.PHONY: clean
clean:
	$(SILENT) $(ECHO) "--- Removing object files ---"
	$(SILENT) rm -f *.o *.a

