# Libretro-V
V programming language bindings for libretro

An example is in the skeleton-libretro folder
```sh
cd skeleton-libretro
v skeleton.v -shared -enable-globals -cc gcc
```
Copy the resulting library file (.dll/.so) to retroarch core folder
