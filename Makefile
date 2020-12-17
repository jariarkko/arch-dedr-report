EARLIERVERSIONNO	=	00
EARLIERVERSION	=	draft-iab-dedr-report-$(EARLIERVERSIONNO).txt

all:	draft-arkko-arch-dedr-report.txt \
	draft-arkko-arch-dedr-report-diff.html

base:	draft-arkko-arch-dedr-report.txt

LIBDIR := lib
include $(LIBDIR)/main.mk

$(LIBDIR)/main.mk:
ifneq (,$(shell grep "path *= *$(LIBDIR)" .gitmodules 2>/dev/null))
	git submodule sync
	git submodule update $(CLONE_ARGS) --init
else
	git clone -q --depth 10 $(CLONE_ARGS) \
	    -b master https://github.com/martinthomson/i-d-template $(LIBDIR)
endif

draft-iab-dedr-report.txt: draft-arkko-arch-dedr-report.txt
	cp draft-arkko-arch-dedr-report.txt draft-iab-dedr-report.txt

draft-iab-dedr-report-diff.html:	draft-arkko-arch-dedr-report.txt \
					draft-iab-dedr-report.txt \
					$(EARLIERVERSION)
	rfcdiff $(EARLIERVERSION) draft-iab-dedr-report.txt
	cp draft-iab-dedr-report-from--$(EARLIERVERSIONNO).diff.html draft-iab-dedr-report-diff.html

cleantrash:
	rm -f *~

jaricompile:	draft-iab-dedr-report.txt \
		draft-iab-dedr-report-diff.html \
		Makefile
	scp draft-iab-dedr-report.txt \
		draft-iab-dedr-report-diff.html \
		root@cloud3.arkko.eu:/var/www/www.arkko.com/html/ietf/iab
