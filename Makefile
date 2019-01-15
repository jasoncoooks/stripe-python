init:
	pip install pipenv --upgrade
	pipenv install --dev --skip-lock

test:
	pipenv run tox -p auto

ci:
	pipenv run pytest --cov=stripe -n 8

coveralls:
	pipenv run coveralls

lint:
	pipenv run tox -e lint
