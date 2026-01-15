#!/usr/bin/make

.SUFFIXES:
.SUFFIXES:	.md

TITLE := What are Nuclear Cross-sections?

default: public/index.html

public/index.html: README.md article.css
	@mkdir -p public
	@pandoc --from=gfm --to=html5 --embed-resources --standalone \
		--css=article.css \
		--metadata title="$(TITLE)" \
		--output=$@ README.md

.PHONY: clean
clean:
	@$(RM) -rf public cache figure
