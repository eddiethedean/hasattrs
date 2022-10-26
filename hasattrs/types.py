from collections.abc import Container, Hashable, Iterable, Iterator, Reversible
from collections.abc import Generator, Sized, Callable, Collection, Sequence
from collections.abc import MutableSequence, ByteString, Set, MutableSet
from collections.abc import Mapping, MutableMapping, MappingView, ItemsView
from collections.abc import KeysView, ValuesView, Awaitable, Coroutine
from collections.abc import AsyncIterable, AsyncIterator, AsyncGenerator

from hasattrs.attributes import ASYNC_GENERATOR, ASYNC_ITERABLE, ASYNC_ITERATOR
from hasattrs.attributes import AWAITABLE, BYTE_STRING, CALLABLE, COLLECTION
from hasattrs.attributes import CONTAINER, COROUTINE, GENERATOR, HASHABLE
from hasattrs.attributes import ITEMS_VIEW, ITERABLE, ITERATOR, KEYS_VIEW
from hasattrs.attributes import MAPPING, MAPPING_VIEW, MUTABLE_MAPPING
from hasattrs.attributes import MUTABLE_SEQUENCE, MUTABLE_SET, REVERSABLE
from hasattrs.attributes import SEQUENCE, SET, SIZED, VALUES_VIEW


acb_attrs = {Container: CONTAINER,
             Hashable: HASHABLE,
             Iterable: ITERABLE,
             Iterator: ITERATOR,
             Reversible: REVERSABLE,
             Generator: GENERATOR,
             Sized: SIZED,
             Callable: CALLABLE,
             Collection: COLLECTION,
             Sequence: SEQUENCE,
             MutableSequence: MUTABLE_SEQUENCE,
             ByteString: BYTE_STRING,
             Set: SET,
             MutableSet: MUTABLE_SET,
             Mapping: MAPPING,
             MutableMapping: MUTABLE_MAPPING,
             MappingView: MAPPING_VIEW,
             ItemsView: ITEMS_VIEW,
             KeysView: KEYS_VIEW,
             ValuesView: VALUES_VIEW,
             Awaitable: AWAITABLE,
             Coroutine: COROUTINE,
             AsyncIterable: ASYNC_ITERABLE,
             AsyncIterator: ASYNC_ITERATOR,
             AsyncGenerator: ASYNC_GENERATOR}