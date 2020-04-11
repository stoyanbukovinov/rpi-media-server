MY_VAR := $(shell echo whatever)

MY_VAR1 := ${shell echo ${find . -name '*compose*'} | ${sed -e 's/^/-f /'} | ${xargs echo} }

all:
	@echo MY_VAR IS $(MY_VAR)