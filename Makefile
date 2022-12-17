# Copyright © 2022 Jakub Wilk <jwilk@jwilk.net>
# SPDX-License-Identifier: MIT

.PHONY: all
all: rectinrect.svg

rectinrect.svg: rectinrect-gensvg
	./rectinrect-gensvg > $(@).tmp
	mv $(@).tmp $(@)

.PHONY: clean
clean:
	rm -f *.tmp

# vim:ts=4 sts=4 sw=4 noet
