
LINES=$(shell wc -l < guessinggame.sh)


DATE=$(shell date)

.PHONY: run README.md


README.md:
	echo "# Guessing Game" > README.md
	echo "Date and Time of Make Run: $(DATE)" >> README.md
	echo "Number of lines in guessinggame.sh: $(LINES)" >> README.md


run: guessinggame.sh
	bash guessinggame.sh
