SILENT := @
ECHO := echo

all: linux-24.pdf

%.aux: %.tex
	$(SILENT) $(ECHO) "- Generating: '$@' -> '$?"
	$(SILENT) pdflatex $< >> /dev/null
	$(SILENT) rm -f $(<:%.tex=%.log) $(<:%.tex=%.pdf)

%.bbl %.blg: %.bib %.aux
	$(SILENT) $(ECHO) "- Generating: '$@' -> '$?"
	$(SILENT) bibtex $(<:%.bib=%) >> /dev/null

%.pdf: %.tex %.bbl %.blg
	$(SILENT) $(ECHO) "- Generating: '$@' -> '$?"
	$(SILENT) pdflatex $< >> /dev/null
	$(SILENT) rm -f $(<:%.tex=%.log)

.PHONY: clean
clean:
	$(SILENT) $(ECHO) "- Removing generated files"
	$(SILENT) rm -f *.aux *.bbl *.blg *.log *.pdf

