sources = schoner_prafekt_zwei

.PHONY: test format lint unittest coverage pre-commit clean
lint:
	flake8 $(sources) tests

test:
	pytest

coverage:
	pytest --cov=$(sources) --cov-branch --cov-report=term-missing tests

check:
	pre-commit run --all-files

clean:
	rm -rf .pytest_cache
	rm -rf *.egg-info
	rm -rf .tox dist site
	rm -rf coverage.xml .coverage
