.PHONY: all, html, css, clean, section 

all: css html

html:
	hugo

css:
	scss -t compressed themes/introit16/static/scss/style.scss themes/introit16/static/css/style.css

section:
	@./createsection.sh

clean:
	@rm -r public
