local_pgm  := $(subdirectory)/main
local_src := $(addprefix $(subdirectory)/,main.c)
local_objs := $(subst .c,.o,$(local_src))

programs   += $(local_pgm)
sources += $(local_src)

$(programs): $(local_objs) $(libraries) #依赖关系从左到右 | 通过寻找libraries，进而启动了各模块mk文件，启动 eval call函数而生成库文件
	$(CC) $(CFLAGS) $(CPPFLAGS) $(TARGET_ARCH) -o $@ $^
