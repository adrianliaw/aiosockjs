
commands:
	@echo "develop"
	@echo "install"
	@echo "lint"
	@echo "test"
	@echo "clean"
	@echo "release"

develop:
	python setup.py develop

install: clean test
	python setup.py install

lint:
	pep8 aiosockjs tests
	python -m pyflakes aiosockjs tests

test: clean lint
	py.test tests

clean:
	find . -name "*.pyc" -exec -rm -f {} +
	find . -name "*.pyo" -exec -rm -f {} +
	find . -name "*~" -exec -rm -f {} +
	find . -name "__pycache__" -exec -rm -f {} +
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info

release:
	python setup.py sdist upload
