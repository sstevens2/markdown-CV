sstevens_CV.pdf : sstevens_CV.md
	pandoc -s -o sstevens_CV.html -V geometry:margin=.5in sstevens_CV.md
	pandoc -o sstevens_CV.pdf -V geometry:margin=.5in --variable urlcolor=blue sstevens_CV.md
