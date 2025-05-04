
### 📦 Hello World C Project (Make + GCC)

This is a minimal C project using `make` and `gcc`, supporting debug and release builds with configurable build paths.

    make BUILD_DIR=build/debug
    ./build/debug/hello
    
    make release BUILD_DIR=build/release
    ./build/release/hello
    
    make clean BUILD_DIR=build/release

