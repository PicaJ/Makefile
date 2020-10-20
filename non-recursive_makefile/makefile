# $(call source-to-object, source-file-list)
source-to-object = $(subst .c,.o,$(filter %.c,$1))

# $(subdirectory)
subdirectory = $(patsubst %/module.mk,%,			\
		 $(word						\
		   $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST)))

# $(call make-library, library-name, source-file-list)
define make-library
  libraries += $1
  sources   += $2

  $1: $(call source-to-object,$2)
	$(AR) $(ARFLAGS) $$@ $$^
endef

.PHONY:test
define make-print
test:
	@echo "hello world!"
endef

programs := 
sources  :=
libraries :=
extra_clean :=
include_dirs := include/db include/codec include/ui

objects = $(subst .c,.o,$(sources))
dependencies = $(subst .c,.d,$(sources))

CPPFLAGS += $(addprefix -I ,$(include_dirs))
modules :=lib/codec lib/db lib/ui app/player

all:#取消all：时，仅执行一个mk文件
include $(addsuffix /module.mk,$(modules)) 

vpath %.h $(include_dirs)

MV := mv -f
RM := rm -f
SED := sed

.PHONY : all
all:$(programs)	#入口

.PHONY : libraries
libraries:$(libraries)

.PHONY : clean
clean:
	$(RM) $(objects) $(programs) $(libraries) $(dependencies) 

#ifneq "$(MAKECMDGOALS)" "clean"
#  include $(dependencies)
#endif

%.d: %.c
	$(CC) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -M $< | \
	$(SED) 's,\($(notdir $*)\.o\) *:,$(dir $@)\1 $@: ,' > $@.tmp
	$(MV) $@.tmp $@

.PHONY:printf2
printf2:
	@echo ""
	@echo "finally printf variable"
	@echo "dependencies:" $(dependencies)
	@echo "libraries:" $(libraries)
	@echo "objects:" $(objects) 
	
