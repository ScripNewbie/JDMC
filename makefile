all: compile exec

I0 = -I.
I1 = -IC:/JDMC/JDM
I2 = -IC:/JDMC/JDM/headers
ALL_I = $(I0) $(I1) $(I2)

LIB = src .
C1 = $(wildcard C:/JDMC/JDM/*.cpp)
C2 = $(wildcard C:/JDMC/JDM/cpp/*.cpp)
ALL_C = $(C1) $(C2)

ALL_FILE = $(foreach D, $(LIB), $(wildcard $(D)/*.cpp))

compile:
	g++ $(ALL_I) -o main.exe $(ALL_C) $(ALL_FILE)

exec:
	./main.exe
