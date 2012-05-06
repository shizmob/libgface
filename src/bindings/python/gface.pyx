from libc.stddef cimport wchar_t

cimport cgface

cdef class gface:
    def __cinit__(self, key):
        cdef bytes key_bytes = key.encode()
        cgface.gface_init(key_bytes)

    def acquire(self):
        cdef wchar_t *gface_bytes = cgface.gface_acquire()
        cdef char gface_str[1024]

        cgface.wcstombs(gface_str, gface_bytes, 1024)
        return gface_str.decode("utf-8")

    def __dealloc__(self):
        cgface.gface_shutdown()

