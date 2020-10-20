MV := mv -f
RM := rm -f
SED := sed

objects := $(subst .c,.o,$(sources))
dependencies := $(subst .c,.d,$(sources))
include_dirs += ../../include/codec ../../include/db ../../include/ui
CPPFLAGS += $(addprefix -I ,$(include_dirs))

vpath %.h $(include_dirs)

.PHONY : library

library : $(objects)
	$(AR) $(ARFLAGS) -o $(library) $^	#打包ar rv 

.PHONY : clean

clean :
	$(RM) $(objects) $(program) $(library) $(dependencies)


