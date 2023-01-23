# repo: global
SPHINXOPTS    ?=
SPHINXBUILD   ?= ~/.thynotes/bin/sphinx-build
SOURCEDIR     = docs
BUILDDIR      = ../zz_zBuilds/$(shell basename $(shell dirname $(abspath $(lastword $(MAKEFILE_LIST)))))

help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

show:
	@echo $(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

browse:
	@python -m webbrowser -t "$(BUILDDIR)/html/index.html"

%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
