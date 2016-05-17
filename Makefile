MAN1 =
MAN1 += cargo.md
MAN1 += cargo-build.md
MAN1 += cargo-clean.md
MAN1 += cargo-doc.md
MAN1 += cargo-new.md
MAN1 += cargo-init.md
MAN1 += cargo-run.md
MAN1 += cargo-test.md
MAN1 += cargo-bench.md

all: $(patsubst %.md, %.1, $(MAN1))

%.1: %.md
	pandoc -s -t man $< -o $@
	tail --line=+3 $@ > tmp && mv tmp $@

clean:
	rm *.1
