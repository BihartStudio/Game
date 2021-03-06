EXEC = game.exe
CXX = g++
CXXFLAGS = -Wall -g
INCLUDES = -I "C:/SDK/glew/include" -I "C:/SDK/glfw/include" -I "C:/SDK/SDL/include"
LIBPATH = -L "C:/SDK/glew/lib/Release/x64" -L "C:/SDK/glfw/lib-mingw-w64" -L "C:/SDK/SDL/lib"
LDFLAGS = $(LIBPATH) -l

SOURCES = $(wildcard src/*.cpp)
OBJECTS = $(SOURCES:.cpp=.o)

all: $(OBJECTS)
$(CXX) $(CXXFLAGS) $(INCLUDES) -o $(EXEC) $(OBJECTS) $(LDFLAGS)

clean:
	-rm src/*.o *.exe