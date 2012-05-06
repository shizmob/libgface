from libc.stddef cimport wchar_t, size_t

cdef extern from "gface/gface.h":
    int gface_init(const char *)
    wchar_t *gface_acquire()
    void gface_shutdown()

cdef extern from "stdlib.h":
    size_t wcstombs(char *dest, wchar_t *src, size_t n)

