CXX=arm-buildroot-linux-uclibcgnueabihf-g++ -std=c++11
#CXX=g++ -std=c++11

CFLAGS=-Wall -g -O2

TARGET=mp4change

OBJECT=main.o

#LIB+=/home/hi/workspace/mp4v2/mp4v2-2.0.0/mp4v2_install_dir/lib/libmp4v2.a  #lzj, past
#LIB+=/home/hi/workspace/mp4v2/mp4v2_diff/mp4v2-master/mp4v2_install_dir/lib/libmp4v2.a
LIB+=/home/hi/workspace/mp4v2/H265CMp4/mp4v2-2.0.0/out/lib/libmp4v2.a

#LIB_INC+=-L/home/hi/mp4/lib-mp4v2-master/fat/lib/lib


#INCLUDE+=-I/home/hi/workspace/mp4v2/mp4v2-2.0.0/mp4v2_install_dir/include/mp4v2	#lzj, past
#INCLUDE+=-I/home/hi/workspace/mp4v2/mp4v2-2.0.0/mp4v2_install_dir/include #lzj, past

#INCLUDE+=-I/home/hi/workspace/mp4v2/mp4v2_diff/mp4v2-master/mp4v2_install_dir/include/mp4v2
#INCLUDE+=-I/home/hi/workspace/mp4v2/mp4v2_diff/mp4v2-master/mp4v2_install_dir/include

INCLUDE+=-I/home/hi/workspace/mp4v2/H265CMp4/mp4v2-2.0.0/out/include/mp4v2
INCLUDE+=-I/home/hi/workspace/mp4v2/H265CMp4/mp4v2-2.0.0/out/include
INCLUDE+=-I./include

ALL:$(TARGET)
$(TARGET):$(OBJECT)
	$(CXX) $(CFLAGS) $^ -o $@ $(LIB)

%.o:%.cpp
	$(CXX) -c $< -o $@ $(INCLUDE) $(LIB) $(CFLAGS)

.PHONY: ALL clean

clean:
	rm -rf $(ALL) $(OBJECT)
