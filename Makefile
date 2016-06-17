.PHONY: all, html, css, clean, section 

all: css html server draft_server

html:
	hugo

css:
	scss -t compressed themes/introit16/static/scss/style.scss themes/introit16/static/css/style.css

section:
	@./createsection.sh

server: css
	hugo server

draft_server: css
	hugo server --buildDrafts

clean:
	@rm -r public
