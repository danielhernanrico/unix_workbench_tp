.PHONY: clean, doc

DATETIME = $(shell date -Is)

README.md: guessinggame.sh
	echo "THE AWESOME GUESSING GAME" > $@
	echo "guessinggame.sh have $(shell wc -l < $<) lines." >> $@
	echo "This README.md was created at $(DATETIME)" >> $@

doc: README.md

clean:
	rm README.md

