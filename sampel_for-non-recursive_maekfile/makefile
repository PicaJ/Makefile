define MA
.PHONY:test
test:
	@echo "hello world!"
endef 

define MAB
.PHONY:$1
testmk += $1
$1:
	@echo "hello world again!"
endef

define MAC
.PHONY:test2
test2:
	@echo "hello world 3!"
endef

testmk := 

all:#仅作为引入，其中的eval需要关系依托才可执行
include test.mk

.PHONY:all
#第一个目标
all:$(testmk)	#此处需要依赖一个关系到test.mk文件的变量，此变量从MAB函数赋值，追踪到test.mk文件
	@echo "all test!"

