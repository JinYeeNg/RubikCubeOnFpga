CKOCIEMBA_SRC = coordcube.cpp cubiecube.cpp facecube.cpp search.cpp prunetable_helpers.cpp
CKOCIEMBA_INCLUDE = include
CFLAGS = -std=c++14 -O3 -g
BINDIR = bin
BIN = kociemba

solve: solve.cpp $(CKOCIEMBA_SRC)
	mkdir -p $(BINDIR)
	g++ $(CFLAGS) $(CKOCIEMBA_SRC) -I$(CKOCIEMBA_INCLUDE) solve.cpp -o $(BINDIR)/$(BIN) -ltbb -pg



