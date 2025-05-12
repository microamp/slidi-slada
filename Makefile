INPUT ?= slides.org

default: gen

gen:
	pandoc --from org --to slidy \
		$(INPUT) -o $(INPUT:.org=.html) \
		--template slidy.html
	open $(INPUT:.org=.html)

clean:
	rm $(INPUT:.org=.html)

.PHONY: default gen clean
