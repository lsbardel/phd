.PHONY: help
help:
	@echo ======================================================================================
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
	@echo ======================================================================================


.PHONY: phd
phd:			## Build phd thesis
	@cd thesis &&\
	pdflatex thesis.tex &&\
	mv thesis.pdf temp_thesis.pdf &&\
	pdftk temp_thesis.pdf cat 2-end output thesis.pdf &&\
	rm temp_thesis.pdf
