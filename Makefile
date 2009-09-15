
ifeq "$(PREFIX)" ""
	PREFIX=$(HOME)
endif

ifeq "$(BINDIR)" ""
	BINDIR=$(PREFIX)/bin
endif

# This list must be kept up-to-date with the scripts in this directory.
SCRIPTS = perl-incpp \
		perl-pathsearch \
		pathsearch \
		futaba-thread-get \
		pb-leecher \
		tz

.PHONY  = $(SCRIPTS) all
TARGETS = $(foreach script,$(SCRIPTS),$(BINDIR)/$(script))

all: $(SCRIPTS)

$(SCRIPTS):: $(BINDIR)
	install -m755 $@ $(BINDIR)/

$(BINDIR):
	mkdir -p $(BINDIR)

