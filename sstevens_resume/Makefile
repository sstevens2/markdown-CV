sstevens_resume.pdf : sstevens_resume_pdf.md
	../bin/md2resume pdf --template unstyled sstevens_resume_pdf.md .
	mv sstevens_resume_pdf.pdf sstevens_resume.pdf
	mv sstevens_resume.pdf sstevens_resume_unsty.pdf
	../bin/md2resume pdf --template readable sstevens_resume_pdf.md .
	mv sstevens_resume_pdf.pdf sstevens_resume.pdf

sstevens_resume.html : sstevens_resume.pdf
	../bin/md2resume html --template unstyled sstevens_resume.md .
	mv sstevens_resume.html sstevens_resume_unsty.html
	../bin/md2resume html --template readable sstevens_resume.md .
