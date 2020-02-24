# cython: warn.maybe_uninitialized=True
# mode: error
# tag: werror
# ticket: 739

def index_lhs(a):
    cdef object idx
    a[idx] = 1

def slice_lhs(a):
    cdef object idx
    a[:idx] = 1

_ERRORS = """
8:9: local variable 'idx' referenced before assignment
12:10: local variable 'idx' referenced before assignment
"""
