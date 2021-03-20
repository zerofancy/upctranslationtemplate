main.pdf:main.tex
	-xelatex main
	-bibtex main
	-xelatex main
	-xelatex main

.PHONY: clean
clean:
	find . -type f \( -name '*.pdf' -o -name '*.log' -o -name '*.aux' -o -name '*.bbl' -o -name '*.blg' -o -name '*.synctex.gz' \) | xargs rm
.PHONY: sync
sync:
	git add .
	git commit -m "Sync"
	git push