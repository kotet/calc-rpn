DC ?= dmd
INPUT := ../../input.txt
ANSWER := ../../output.txt
OUTPUT := output.txt

calc: calc.d
	$(DC) calc.d
test: calc
	cat $(INPUT) | ./calc > $(OUTPUT)
	diff -q $(ANSWER) $(OUTPUT)
clean:
	$(RM) calc calc.o $(OUTPUT)