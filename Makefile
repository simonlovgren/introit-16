.PHONY: all, html, css, clean, section, server, draft_server, lastmod

all: css lastmod html

html:
	hugo

css:
	scss -t compressed themes/introit16/static/scss/style.scss themes/introit16/static/css/style.css

section:
	@./createsection.sh

lastmod:
	@./lastmod_update.py -rq content

server: css
	hugo server

draft_server: css
	hugo server --buildDrafts

clean:
	@rm -r public
