all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Project Overview" >> README.md
	echo "An interactive Bash program where users guess the number of files in the current working directory." >> README.md
	echo "" >> README.md
	echo "## Build Details" >> README.md
	echo "" >> README.md
	printf "* **Date and time make was run:** %s\n" "$$(date)" >> README.md
	printf "* **Number of lines of code in guessinggame.sh:** %s\n" "$$(wc -l < guessinggame.sh | tr -d ' ')" >> README.md

clean:
	rm -f README.md

.PHONY: all clean
