lib_codec := lib/codec
lib_db := lib/db
lib_ui := lib/ui
libraries := $(lib_ui) $(lib_db) $(lib_codec)
player := app/player

#被PHONY设定下，永远需要更新(且可以排除文件重名的干扰)
.PHONY : clean $(libraries) $(player) 

all : $(player) 

#$(MAKE) 表示shell中的make命令 $(make)直接打印 | 不需要依赖目标 | --directory 选项为去读makefile前进入目录
$(player) $(libraries) :
	$(MAKE) --directory=$@ $(TARGET)

#递归关系
$(player) : $(libraries)	

#编译顺序
#$(lib_ui) : $(lib_db) $(lib_codec)	

clean:
	$(MAKE) TARGET=clean
