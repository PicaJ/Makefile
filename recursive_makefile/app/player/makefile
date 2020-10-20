RM := rm -f

program := mainapp

sources := main.c

objects := $(subst .c,.o,$(sources))
dependencies := $(subst .c,.d,$(sources))

libraries    := -ldb -lcodec -lui
include_dirs := ../../include/db  ../../include/ui ../../include/codec
#include_dirs := .. ../../include
vpath %.h $(include_dirs)

lib_dirs     := ../../lib/codec ../../lib/db ../../lib/ui
#vpath %.a $(lib_dirs)

include_lib  := ../../lib/db  ../../lib/ui ../../lib/codec
CPPFLAGS     += $(addprefix -I, $(include_dirs))
CPPFLAGS     += $(addprefix -L, $(include_lib))


.PHONY : $(program)

$(program) : $(objects)
	$(CC) $(CPPFLAGS) -o $@ $^ $(libraries)

$(objects) : $(sources)
	$(CC) $(CPPFLAGS) -o $@ -c $^
 
#library : $(objects)
	#$(AR) $(ARFLAGS) -o $(library) $^ $(lib)	#打包ar rv 

.PHONY : clean

clean :
	$(RM) $(objects) $(program) $(library) $(dependencies)
