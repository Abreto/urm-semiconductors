# Written by Abreto<m@abreto.net>
JOBNAME=urmtps
SRCDIR=src/
MAINTEX=main.tex
PARTINDEX=part*.tex
CHAPTERCONTENTS=chapters/ch*.tex
SECTIONCONTENTS=sections/ch*/sec*.tex
TEXSRCS=$(SRCDIR)$(MAINTEX) $(SRCDIR)$(PARTINDEX) $(SRCDIR)$(CHAPTERCONTENTS) \
		$(SRCDIR)$(SECTIONCONTENTS)

all:$(JOBNAME).pdf

$(JOBNAME).pdf: $(TEXSRCS)
	cd $(SRCDIR); xelatex -jobname=$(JOBNAME) $(MAINTEX)
	cd $(SRCDIR); xelatex -jobname=$(JOBNAME) $(MAINTEX)
	mv $(SRCDIR)$(JOBNAME).pdf .

clean:
	rm $(SRCDIR)$(JOBNAME).aux $(SRCDIR)$(JOBNAME).log $(SRCDIR)$(JOBNAME).toc
	rm $(SRCDIR)$(JOBNAME).idx
	rm $(SRCDIR)chapters/ch*.aux
	# rm $(JOBNAME).pdf
