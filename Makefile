MAN1 =
MAN1 += cargo.md
MAN1 += cargo-build.md
MAN1 += cargo-clean.md
MAN1 += cargo-doc.md

all: $(patsubst %.md, %.1, $(MAN1))

%.1: %.md
	pandoc -s -t man $< -o $@
	tail --line=+3 $@ > tmp && mv tmp $@

clean:
	rm *.1
