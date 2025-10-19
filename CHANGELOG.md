# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Modern project infrastructure with `pyproject.toml` (PEP 621 compliant)
- GitHub Actions workflows for CI/CD (tests, linting, publishing)
- Pre-commit hooks configuration for code quality
- Tox configuration for multi-version testing
- Makefile with developer convenience commands
- Comprehensive contributing guidelines in `CONTRIBUTING.md`
- GitHub issue and PR templates
- `.editorconfig` for consistent editor settings
- Enhanced `.gitignore` with comprehensive Python and IDE ignores

### Changed
- Removed `setup.py` in favor of modern `pyproject.toml` only approach
- All tool configurations now centralized in `pyproject.toml`

## [0.1.0] - 2024-01-XX

## Summary of Improvements

This release represents a major improvement to the hasattrs package with bug fixes, enhanced documentation, comprehensive testing, and modernization for current Python versions.

---

## Critical Fixes

### 1. Fixed REVERSABLE → REVERSIBLE Typo
- **Files Changed**: `hasattrs/attributes.py`, `hasattrs/checks.py`, `hasattrs/types.py`
- **Impact**: Corrected spelling throughout the codebase for consistency
- **Details**: The constant and all references were using the incorrect spelling "REVERSABLE" instead of "REVERSIBLE"

### 2. Added Missing __getitem__ to SEQUENCE and MAPPING
- **File Changed**: `hasattrs/attributes.py`
- **Impact**: Now correctly matches the actual requirements of `collections.abc.Sequence` and `collections.abc.Mapping`
- **Details**: Both Sequence and Mapping require the `__getitem__` method, which was previously missing from the attribute sets

### 3. Updated Python Version Requirements
- **File Changed**: `setup.py`
- **Impact**: Package now requires Python 3.8+ (previously 3.6+)
- **Reason**: Python 3.6 and 3.7 reached end-of-life
- **Details**: Updated classifiers to include Python 3.8 through 3.12

### 4. Added ByteString Deprecation Warning
- **File Changed**: `hasattrs/checks.py`
- **Impact**: Users are warned when using deprecated functionality
- **Details**: `has_byte_string_attrs()` now emits a `DeprecationWarning` because `collections.abc.ByteString` is deprecated in Python 3.9+ and will be removed in Python 3.14

---

## Code Quality Improvements

### 5. Added Comprehensive Docstrings
- **Files Changed**: All module files
- **Impact**: Better documentation and IDE support
- **Details**:
  - Module-level docstrings for all files
  - Function docstrings with descriptions, arguments, returns, and examples
  - Google-style docstring format

### 6. Enhanced Type Annotations
- **Files Changed**: `hasattrs/checks.py`, `hasattrs/types.py`
- **Impact**: Better type checking support
- **Details**:
  - Added proper type hints to the `abc_attrs` dictionary
  - Improved imports for typing support
  - Fixed type annotation inconsistencies

### 7. Added __all__ Exports
- **File Changed**: `hasattrs/__init__.py`
- **Impact**: Clear public API definition
- **Details**: Explicitly defines 28 public exports for the package

### 8. Added PEP 561 Compliance
- **Files Created**: `hasattrs/py.typed`
- **Files Changed**: `setup.py`
- **Impact**: Package is now recognized by type checkers like mypy
- **Details**: Added empty `py.typed` marker file and updated `setup.py` to include it

---

## Testing Infrastructure

### 9. Created Comprehensive Test Suite
- **Files Created**:
  - `tests/__init__.py`
  - `tests/test_attributes.py` (24 tests)
  - `tests/test_checks.py` (82 tests)
- **Impact**: 100% code coverage across all modules
- **Details**:
  - Tests for all attribute set definitions
  - Tests for all checker functions
  - Tests with built-in types
  - Tests with custom classes
  - Edge case testing
  - Async function testing
  - Deprecation warning testing

### 10. Added Development Tooling
- **Files Created**:
  - `requirements-dev.txt` - Development dependencies
  - `pytest.ini` - Pytest configuration with coverage settings
- **Impact**: Easier development and contribution workflow
- **Details**:
  - Configured pytest with verbose output and coverage reporting
  - Included dependencies for testing, type checking, and code quality

---

## Documentation

### 11. Enhanced README
- **File Changed**: `README.md`
- **Impact**: Much clearer documentation for users
- **Details**:
  - Added badges (license, Python version)
  - Comprehensive usage examples
  - Complete API reference listing all functions
  - Added "Why Use HasAttrs?" section
  - Better installation and requirements sections
  - Contributing guidelines
  - Deprecation warnings

### 12. Updated Package Metadata
- **File Changed**: `setup.py`
- **Impact**: Better package discovery and information
- **Details**:
  - Version bumped to 0.1.0
  - Fixed typo in description ("at" → "as")
  - Added comprehensive classifiers
  - Marked as Beta status
  - Added "Typing :: Typed" classifier

---

## Test Results

```
============================= test session starts ==============================
106 passed in 0.31s

---------- coverage: platform darwin, python 3.8.18-final-0 ----------
Name                     Stmts   Miss  Cover   Missing
------------------------------------------------------
hasattrs/__init__.py        12      0   100%
hasattrs/attributes.py      25      0   100%
hasattrs/checks.py          64      0   100%
hasattrs/types.py           64      0   100%
------------------------------------------------------
TOTAL                      165      0   100%
```

---

## Files Modified

1. `hasattrs/__init__.py` - Added docstring, `__all__`, updated version
2. `hasattrs/attributes.py` - Fixed typo, added `__getitem__`, added docstring
3. `hasattrs/checks.py` - Fixed typo, added docstrings, added deprecation warning
4. `hasattrs/types.py` - Fixed typo, added docstrings, improved type hints
5. `setup.py` - Updated version, Python requirements, classifiers, package data
6. `README.md` - Completely rewritten with comprehensive documentation

## Files Created

1. `hasattrs/py.typed` - PEP 561 marker file
2. `tests/__init__.py` - Test package initialization
3. `tests/test_attributes.py` - Attribute set tests
4. `tests/test_checks.py` - Checker function tests
5. `requirements-dev.txt` - Development dependencies
6. `pytest.ini` - Pytest configuration
7. `CHANGES.md` - This file

---

## Breaking Changes

**None** - This release is fully backward compatible with version 0.0.2, with the following notes:

1. `has_byte_string_attrs()` now emits a deprecation warning (but still works)
2. Minimum Python version is now 3.8 (dropped support for 3.6 and 3.7)
3. The internal `REVERSABLE` constant was renamed to `REVERSIBLE` (but this was never part of the public API)

---

## Upgrade Instructions

Simply upgrade to the new version:

```bash
pip install --upgrade hasattrs
```

If you're using Python 3.6 or 3.7, you'll need to upgrade Python to 3.8 or later first.

---

## Future Considerations

1. Consider adding `__all__` to `attributes.py` and `types.py` for better encapsulation
2. Consider adding a `pyproject.toml` for modern Python packaging
3. Consider setting up GitHub Actions for CI/CD
4. Consider adding type stubs for even better IDE support
5. Monitor Python 3.14 release for complete ByteString removal

---

## Acknowledgments

All improvements maintain backward compatibility while modernizing the package for current Python best practices.

