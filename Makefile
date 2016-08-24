UPLOAD_HOST=arrhenius.it.uu.se
UPLOAD_FOLDER=/it/www/htdocs/it/education/course/homepage/introdat/ht16/
SSH_KEY=~/.ssh/id_uu

.PHONY: all, html, css, clean, section, server, draft_server, lastmod, upload

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

upload:
	@./upload.sh $(UPLOAD_HOST) $(UPLOAD_FOLDER) $(SSH_KEY)

clean:
	@rm -r public
