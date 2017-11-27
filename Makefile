all: html pdf docx rtf

pdf: sstevens_CV.pdf
sstevens_CV.pdf: style_chmduquesne.tex sstevens_CV.md
	pandoc --standalone --template style_chmduquesne.tex \
	--from markdown --to context \
	-V papersize=A4 \
	-o sstevens_CV.tex sstevens_CV.md; \
	context sstevens_CV.tex

html: sstevens_CV.html
sstevens_CV.html: style_chmduquesne.css sstevens_CV.md
	pandoc --standalone -H style_chmduquesne.css \
        --from markdown --to html \
        -o sstevens_CV.html sstevens_CV.md

docx: sstevens_CV.docx
sstevens_CV.docx: sstevens_CV.md
	pandoc -s -S sstevens_CV.md -o sstevens_CV.docx

rtf: sstevens_CV.rtf
sstevens_CV.rtf: sstevens_CV.md
	pandoc -s -S sstevens_CV.md -o sstevens_CV.rtf

clean:
	rm -f sstevens_CV.html
	rm -f sstevens_CV.tex
	rm -f sstevens_CV.tuc
	rm -f sstevens_CV.log
	rm -f sstevens_CV.pdf
	rm -f sstevens_CV.docx
	rm -f sstevens_CV.rtf
