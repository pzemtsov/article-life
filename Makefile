CXX=g++
CXXFLAGS = -std=c++11 -msse4.2 -O3

main:
		$(CXX) $(CXXFLAGS) -o life.out life.cpp

clean:
	  rm life.out
