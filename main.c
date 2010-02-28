#include <stdio.h>
#include <dlfcn.h>

int main(int argc, char** argv)
{
    void *dlhandle;
    void (*func)();
    char* error;

    dlhandle = dlopen(argv[1], RTLD_LAZY);
    if (!dlhandle) {
        fprintf (stderr, "%s\n", dlerror());
        return 1;
    }

    dlclose(dlhandle);

    return 0;
}
