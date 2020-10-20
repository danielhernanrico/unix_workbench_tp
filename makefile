.PHONY: doc

README.doc: guessinggame.sh
	sed -n -e '2,$$s/^#\(.*\)/\1/p' <guessinggame.sh >README.md

