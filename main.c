#include "say.h"

static const char* WORLD = "World";
const char* UNIVERSE = "Universe";

int main() {
    say_hello(WORLD);
    dont_say_hello(UNIVERSE);
}
