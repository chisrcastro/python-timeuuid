# Limited Python bindings for libuuid (uuid-dev)

cdef extern from *:
  ctypedef char* const_char_ptr "const char*"

cdef extern from 'stdint.h' nogil:
  ctypedef unsigned long long uint64_t

cdef extern from 'string.h' nogil:
  int memcmp(void *str1, void *str2, size_t n)

cdef extern from 'uuid/uuid.h' nogil:
  ctypedef unsigned char uuid_t[16]
  int uuid_parse(const_char_ptr indata, uuid_t uu)
