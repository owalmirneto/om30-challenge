setup:
	test -f .env || cp .env.example .env;
	make up-database;
	bin/setup;
	make dbreseed dbprepare;
	docker-compose down;

up-database:
	docker-compose up postgres -d;

start:
	docker-compose up postgres -d;
	bin/dev;

dbreseed:
	bin/rails db:drop db:create db:migrate db:seed --trace RAILS_ENV=development;

dbprepare:
	bin/rails db:setup db:test:prepare db:schema:load db:migrate --trace RAILS_ENV=test;

ci:
	make brakeman rubocop erblint eslint rspec;

code-fix:
	make rubocop-fix erblint-fix eslint-fix;

rspec:
	bin/rspec;

rubocop:
	bin/rubocop;

rubocop-fix:
	bin/rubocop -A;

brakeman:
	bin/brakeman;

erblint:
	bin/erblint app/views;

erblint-fix:
	bin/erblint app/views --autocorrect;

eslint:
	bin/eslint;

eslint-fix:
	bin/eslint --fix;
