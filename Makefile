LINES=$(shell wc -l < guessinggame.sh)

DATE=$(shell date)

README.md:
	echo "# Guessing Game" > README.md
	echo "Date et heure de l'exécution de make : $(DATE)" >> README.md
	echo "Nombre de lignes dans guessinggame.sh : $(LINES)" >> README.md

run: guessinggame.sh
	bash guessinggame.sh
