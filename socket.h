#include <stdint.h>

typedef uint16_t sa_family_t;

struct sockaddr_storage {
	sa_family_t ss_family;
	char        __ss_padding[26];
};
