#include <cstdio>
#include <iostream>
#include <cstdint>
#include <cinttypes>

using namespace std;


int main() {
    char t[] = "abc %i\n";

    printf(t, 5);
    return 0;

    cout << "sizeof(FILE) = " << sizeof(FILE) << endl;
    cout << "sizeof(void*) = " << sizeof(void *) << endl;

    // https://en.cppreference.com/w/c/io/setvbuf
    cout << "_IONBF = " << _IONBF << endl;    // no buffering
    cout << "_IOLBF = " << _IOLBF << endl;    // line buffering
    cout << "_IOFBF = " << _IOFBF << endl;    // full buffering

    cout << "PRId64 = " << PRId64 << endl;    // full buffering
}
