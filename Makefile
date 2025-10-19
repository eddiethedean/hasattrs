.PHONY: help install install-dev test test-all lint format type clean build publish docs pre-commit

help:  ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Available targets:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

install:  ## Install package in editable mode
	pip install -e .

install-dev:  ## Install package with development dependencies
	pip install -e ".[dev]"

test:  ## Run tests with pytest
	pytest tests/ -v --cov=hasattrs --cov-report=term-missing --cov-report=html

test-all:  ## Run tests across all Python versions with tox
	tox

lint:  ## Run all linters (ruff, black check, isort check)
	ruff check hasattrs/ tests/
	black --check hasattrs/ tests/
	isort --check-only hasattrs/ tests/

format:  ## Format code with black, isort, and ruff
	ruff check --fix hasattrs/ tests/
	black hasattrs/ tests/
	isort hasattrs/ tests/

type:  ## Run type checker (mypy)
	mypy hasattrs/ --strict

clean:  ## Remove build artifacts, cache files, and coverage reports
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info
	rm -rf .pytest_cache
	rm -rf .mypy_cache
	rm -rf .ruff_cache
	rm -rf .tox
	rm -rf htmlcov/
	rm -rf .coverage
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name '*.pyc' -delete
	find . -type f -name '*.pyo' -delete

build:  ## Build distribution packages
	python -m pip install --upgrade build
	python -m build

publish:  ## Publish to PyPI (requires credentials)
	python -m pip install --upgrade twine
	python -m twine upload dist/*

publish-test:  ## Publish to TestPyPI
	python -m pip install --upgrade twine
	python -m twine upload --repository testpypi dist/*

docs:  ## Build documentation
	@echo "Documentation build would go here"
	@echo "Run 'cd docs && make html' if Sphinx docs are set up"

pre-commit-install:  ## Install pre-commit hooks
	pre-commit install

pre-commit:  ## Run pre-commit hooks on all files
	pre-commit run --all-files

check: lint type test  ## Run all checks (lint, type, test)
	@echo "✓ All checks passed!"

