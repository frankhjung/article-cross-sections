#!/usr/bin/make

.SUFFIXES:
.SUFFIXES:	.md .Rmd

default: index.html

index.html: README.Rmd
	@mkdir -p public
	@R --quiet --slave --vanilla --file=make.R --args $@
	@mv index.html public/index.html

.PHONY: clean
clean:
	@$(RM) -rf public cache figure
