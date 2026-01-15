#!/usr/bin/env R

# Render R markdown (Rmd) to HTML.
#
# Usage:
#   R -q -f make.R --args index.html
#   R --quiet --slave --vanilla --file=make.R --args index.html

# load packages
require(rmarkdown)

# require a parameter naming file to render
args = commandArgs(trailingOnly=TRUE)
if (length(args) == 1) {
    if (endsWith(args[1], 'index.html')) {
        render('README.Rmd', html_document(css='article.css'), output_file=args[1], output_dir='.')
    } else {
        warning(sprintf("Expected index.html got %s", args[1]))
    }
} else {
    warning(sprintf("Expected 1 operand got %d", length(args)))
}
