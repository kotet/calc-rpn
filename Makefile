all:
	@make -C src
test:
	@make test -C src

clean:
	@make clean -C src