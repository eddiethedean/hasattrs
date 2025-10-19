# Contributing to HasAttrs

Thank you for your interest in contributing to HasAttrs! This document provides guidelines and instructions for contributing.

## Code of Conduct

Please note that this project adheres to a [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

## How to Contribute

### Reporting Bugs

If you find a bug, please create an issue on GitHub with:
- A clear, descriptive title
- Steps to reproduce the issue
- Expected behavior
- Actual behavior
- Python version and OS
- Any relevant code samples or error messages

### Suggesting Enhancements

Enhancement suggestions are welcome! Please create an issue with:
- A clear, descriptive title
- Detailed description of the proposed enhancement
- Use cases and examples
- Any potential drawbacks or considerations

### Pull Requests

1. **Fork the repository** and create your branch from `main`
2. **Set up your development environment** (see below)
3. **Make your changes** following our code style guidelines
4. **Add tests** for any new functionality
5. **Ensure all tests pass** and maintain 100% coverage
6. **Run linters and type checkers**
7. **Commit your changes** with clear, descriptive commit messages
8. **Push to your fork** and submit a pull request

## Development Setup

### Prerequisites

- Python 3.8 or higher
- pip
- git

### Setup Steps

1. **Clone your fork**:
   ```bash
   git clone https://github.com/YOUR-USERNAME/hasattrs.git
   cd hasattrs
   ```

2. **Create a virtual environment**:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. **Install development dependencies**:
   ```bash
   pip install -e ".[dev]"
   ```

4. **Install pre-commit hooks** (recommended):
   ```bash
   pre-commit install
   ```

## Development Workflow

### Running Tests

```bash
# Run all tests with coverage
make test

# Or use pytest directly
pytest tests/ -v

# Run tests across all Python versions
make test-all  # Uses tox
```

### Code Formatting

We use `black`, `isort`, and `ruff` for code formatting:

```bash
# Format all code
make format

# Or format individual tools
black hasattrs/ tests/
isort hasattrs/ tests/
ruff check --fix hasattrs/ tests/
```

### Linting

```bash
# Run all linters
make lint

# This checks (without modifying):
# - ruff (code quality)
# - black (formatting)
# - isort (import sorting)
```

### Type Checking

```bash
# Run mypy type checker
make type
```

### Running All Checks

```bash
# Run lint, type check, and tests
make check
```

## Code Style Guidelines

### Python Style

- Follow [PEP 8](https://pep8.org/) style guidelines
- Use type hints for all function signatures
- Maximum line length: 100 characters
- Use double quotes for strings (enforced by black)

### Docstrings

- Use Google-style docstrings
- Include descriptions, arguments, returns, and examples where appropriate
- Example:
  ```python
  def function(arg1: str, arg2: int) -> bool:
      """Brief description of what the function does.
      
      More detailed description if needed.
      
      Args:
          arg1: Description of arg1.
          arg2: Description of arg2.
      
      Returns:
          Description of return value.
      
      Example:
          >>> function("test", 42)
          True
      """
  ```

### Testing

- Aim for 100% code coverage
- Test both success and failure cases
- Use descriptive test names
- Group related tests in classes
- Test file structure should mirror source structure

## Pre-commit Hooks

We use pre-commit hooks to ensure code quality. These run automatically before each commit if you ran `pre-commit install`.

The hooks include:
- Trailing whitespace removal
- End-of-file fixing
- YAML/TOML validation
- ruff (linting and formatting)
- black (formatting)
- isort (import sorting)
- mypy (type checking)

To run manually:
```bash
pre-commit run --all-files
```

## Commit Messages

- Use clear, descriptive commit messages
- Start with a verb in present tense (e.g., "Add", "Fix", "Update")
- Keep the first line under 72 characters
- Reference issues and PRs where applicable

Examples:
- `Add support for Python 3.12`
- `Fix typo in has_sequence_attrs docstring`
- `Update README with new examples (#42)`

## Pull Request Process

1. **Update documentation** if you're changing functionality
2. **Update tests** to maintain coverage
3. **Update CHANGELOG.md** with a brief description of your changes
4. **Ensure CI passes** - all tests, lints, and type checks must pass
5. **Request review** from maintainers
6. **Address feedback** promptly and professionally

## Project Structure

```
hasattrs/
├── hasattrs/          # Main package code
│   ├── __init__.py    # Public API exports
│   ├── attributes.py  # Attribute set definitions
│   ├── checks.py      # Checker functions
│   ├── types.py       # Type definitions and mappings
│   └── py.typed       # PEP 561 marker
├── tests/             # Test suite
│   ├── __init__.py
│   ├── test_attributes.py
│   └── test_checks.py
├── .github/           # GitHub Actions workflows
├── pyproject.toml     # Project configuration
├── setup.py           # Legacy setup file
├── pytest.ini         # Pytest configuration (deprecated, use pyproject.toml)
├── tox.ini            # Tox configuration
└── Makefile           # Development commands
```

## Getting Help

- Open an issue for questions
- Refer to existing issues and PRs for examples
- Check the [README](README.md) for usage examples

## Recognition

Contributors will be recognized in:
- The project's contributor list
- Release notes for significant contributions
- The README acknowledgments section

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for contributing to HasAttrs! 🎉

