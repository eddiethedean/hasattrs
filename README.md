# HasAttrs

A pure python package used to check if objects have the same attrs as
collections.abc types.

## Description

Use HasAttrs to check if objects have the same attributes as the
classes in collections.abs, such as Mapping and MutableSequence.
HasAttrs has no dependencies outside Python.

## Getting Started

### Dependencies

* Python>=3.6

### Installing

* pip install hasattrs

### Executing program

* How to run the program
* Step-by-step bullets
```
from collections.abc import Mapping
from hasattrs import has_mapping_attrs
from hasattrs import has_abc_attrs

class Map:
    def __getitem__(self, key): ...
    def __iter__(self): ...
    def __len__(self): ...
    def __contains__(self, value): ...
    def keys(self): ...
    def items(self): ...
    def values(self): ...
    def get(self, key): ...
    def __eq__(self, other): ...
    def __ne__(self, other): ...

# isinstance does not work for Mapping
isinstance(Map(), Mapping) -> False

# but hasattrs has_mapping_attrs does work
has_mapping_attrs(Map()) -> True

# has_abc_attrs also works by passing in collections.abc classes
has_abc_attrs(Map(), Mapping) -> True
```

## Authors

Contributors names and contact info

Odos Matthews: odosmatthews@gmail.com

## License

This project is licensed under the MIT License - see the LICENSE.md file for details