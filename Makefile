SHELL = /bin/bash
SUDO ?=

ifneq ($(shell id -u),0)
	SUDO = sudo
endif

.PHONY: all
all:

.PHONY: install
install: install-etc install-lib install-bin install-sbin

## {{{ target: install-etc
.PHONY: install-etc
install-etc:
	@pwd='$(shell pwd)'; \
	files='$(shell find -L etc)'; \
	for file in $$files; \
	do \
	    [[ $$file == etc ]] && continue; \
	    [[ -d $$file ]] && { \
	        [[ -d /$$file ]] || mkdir -m0755 -p "$$file"; \
	    }; \
	    [[ -f $$file ]] && install -m0644 "$$file" "/$$file"; \
	done
## }}}

# TODO: Finish off below targets
#

## {{{ target: install-lib
.PHONY: install-lib
install-lib:
#	@pwd='$(shell pwd)'; \
#	files='$(shell find -L lib -type f)'; \
#	for file in $$files; \
#	do \
#	  src="$$pwd/$$file"; \
#	  dest="/usr/local/$$file"; \
#	  dest_parent="$$(dirname $$dest)"; \
#	  [[ -d $$dest_parent ]] || { \
#	    echo $(SUDO) install -d $$dest_parent -m0755; \
#	  }; \
#	  [[ -e $$dest ]] && { \
#	    echo $(SUDO) rm -f $$dest; \
#	    [[ $$? -eq 0 ]] || exit 1; \
#	  }; \
#	  echo $(SUDO) ln -s $$src $$dest; \
#	  [[ $$? -eq 0 ]] || exit 1; \
#	done
## }}}

## {{{ target: install-bin
.PHONY: install-bin
install-bin:
#	@pwd='$(shell pwd)'; \
#	files='$(shell find -L bin -type f)'; \
#	for file in $$files; \
#	do \
#	  src="$$pwd/$$file"; \
#	  dest="/usr/local/$$file"; \
#	  dest_parent="$$(dirname $$dest)"; \
#	  [[ -d $$dest_parent ]] || { \
#	    echo $(SUDO) install -d $$dest_parent -m0755; \
#	  }; \
#	  [[ -e $$dest ]] && { \
#	    echo $(SUDO) rm -f $$dest; \
#	    [[ $$? -eq 0 ]] || exit 1; \
#	  }; \
#	  echo $(SUDO) ln -s $$src $$dest; \
#	  [[ $$? -eq 0 ]] || exit 1; \
#	done
## }}}

## {{{ target: install-sbin
.PHONY: install-sbin
install-sbin:
#	@pwd='$(shell pwd)'; \
#	files='$(shell find -L sbin -type f)'; \
#	for file in $$files; \
#	do \
#	    src="$$pwd/$$file"; \
#	    dest="/usr/local/$$file"; \
#	    dest_parent="$$(dirname $$dest)"; \
#	    [[ -d $$dest_parent ]] || { \
#	        echo $(SUDO) install -d $$dest_parent -m0755; \
#	    }; \
#	    [[ -e $$dest ]] && { \
#	        echo $(SUDO) rm -f $$dest; \
#	        [[ $$? -eq 0 ]] || exit 1; \
#	    }; \
#	    echo $(SUDO) ln -s $$src $$dest; \
#	    [[ $$? -eq 0 ]] || exit 1; \
#	done
## }}}

##
# vim: ts=8 sw=8 noet fdm=marker :
##
