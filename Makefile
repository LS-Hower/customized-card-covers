SRC := $(wildcard svg/manual/*.svg)
DST := $(patsubst svg/manual/%.svg,png/%.png,$(SRC))

all: $(DST)

png/%.png: svg/manual/%.svg
	inkscape $< -o $@ --export-dpi=160

clean:
	rm -rf png/*.png
