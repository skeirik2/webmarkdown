index.html: clean index.md
	pandoc --data-dir=data --template=index --from=markdown --to=html --output=index.html index.md

clean:
	rm -f -- index.html 2>/dev/null

distclean: clean
	rm -f -- index.md 2>/dev/null

.PHONY: distclean clean
