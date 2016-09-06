TARGET=dtrace-specification.pdf

SOURCE=								\
	dtrace-specification.tex				\
	abstract.tex						\
	acknowledgments.tex					\
	chap-dtrace-instruction-reference.tex			\
	chap-dtrace-intermediate-format.tex			\
	chap-dtrace-object-format.tex				\
	chap-dtrace-subroutines.tex				\
	chap-dtrace-variable-records.tex			\
	chap-intro.tex						\
	insn-and.tex						\
	insn-or.tex						\
	insn-sll.tex						\
	insn-srl.tex						\
	insn-xor.tex						\
	preamble.tex						\
	subr-rand.tex

${TARGET}: ${SOURCE}
	latexmk -pdf -bibtex $<

clean:
	latexmk -C
