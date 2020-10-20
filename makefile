.PHONY: clean, doc

DATETIME = $(shell date -Is)

README.md: guessinggame.sh
	echo "THE AWESOME GUESSING GAME" > $@
	echo "README.md created $(DATETIME)" >> $@
	echo "guessinggame.sh have $(shell wc -l < $<) lines." >> $@

doc: README.md

clean:
	rm README.md

