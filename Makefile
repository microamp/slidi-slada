INPUT ?= slides.org

default: gen

init:
	pandoc -D slidy > slidy.html
	wget https://www.w3.org/Talks/Tools/Slidy2/styles/slidy.css -O slidy.css
	wget https://www.w3.org/Talks/Tools/Slidy2/scripts/slidy.js -O slidy.js

gen:
	pandoc --from org --to slidy \
		$(INPUT) -o $(INPUT:.org=.html) \
		--template slidy.html
	open $(INPUT:.org=.html)

clean:
	rm $(INPUT:.org=.html)

.PHONY: default gen clean
