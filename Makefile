.PHONY: all
all: multiprec.pdf multiprec.cpp multiprec.h

multiprec.pdf: multiprec.nw LICENSE
multiprec.pdf: efficiency-overflow.nw

.PHONY: clean
clean:
	${RM} multiprec.pdf multiprec.cpp multiprec.h multiprec.mk

multiprec.mk: multiprec.nw
include multiprec.mk

INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/tex.mk
include ${INCLUDE_MAKEFILES}/noweb.mk
