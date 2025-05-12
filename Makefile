default: gen

gen:
	pandoc --from org --to slidy \
		slides.org -o slides.html \
		--template template.html
	open slides.html

.PHONY: gen open
