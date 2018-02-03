SUBDIRS := $(shell find * -type d)

all:
	@list='$(SUBDIRS)'; for subdir in $$list; do \
	$(MAKE) -C $$subdir || exit 1;\
	done


test:
	@list='$(SUBDIRS)'; for subdir in $$list; do \
	$(MAKE) test -C $$subdir || exit 1;\
	done

clean:
	@list='$(SUBDIRS)'; for subdir in $$list; do \
	$(MAKE) clean -C $$subdir;\
	done