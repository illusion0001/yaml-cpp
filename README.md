# yaml-cpp ![Build Status](https://github.com/jbeder/yaml-cpp/actions/workflows/build.yml/badge.svg) [![Documentation](https://codedocs.xyz/jbeder/yaml-cpp.svg)](https://codedocs.xyz/jbeder/yaml-cpp/)

`yaml-cpp` is a [YAML](http://www.yaml.org/) parser and emitter in C++ matching the [YAML 1.2 spec](http://www.yaml.org/spec/1.2/spec.html).

## Usage

See [Tutorial](https://github.com/jbeder/yaml-cpp/wiki/Tutorial) and [How to Emit YAML](https://github.com/jbeder/yaml-cpp/wiki/How-To-Emit-YAML) for reference. For the old API (until 0.5.0), see [How To Parse A Document](https://github.com/jbeder/yaml-cpp/wiki/How-To-Parse-A-Document-(Old-API)).

## Any Problems?

If you find a bug, post an [issue](https://github.com/jbeder/yaml-cpp/issues)! If you have questions about how to use yaml-cpp, please post it on http://stackoverflow.com and tag it [`yaml-cpp`](http://stackoverflow.com/questions/tagged/yaml-cpp).

## How to Build

`yaml-cpp` uses [CMake](http://www.cmake.org) to support cross-platform building. Install [CMake](http://www.cmake.org) _(Resources -> Download)_ before proceeding. The basic steps to build are:

**Note:** If you don't use the provided installer for your platform, make sure that you add `CMake`'s bin folder to your path.

#### 1. Navigate into the source directory, create build folder and run `CMake`:

```
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=oosdk.cmake -G "Unix Makefiles" ../
make
make install DESTDIR=$OO_PS4_TOOLCHAIN
```

  * The `generator` option is the build system you'd like to use. Run `cmake` without arguments to see a full list of available generators.
    * On Windows, you might use "Visual Studio 12 2013" (VS 2013 32-bits), or "Visual Studio 14 2015 Win64" (VS 2015 64-bits).
    * On OS X, you might use "Xcode".
    * On a UNIX-like system, omit the option (for a Makefile).

  * `yaml-cpp` builds a static library by default, you may want to build a shared library by specifying `-DYAML_BUILD_SHARED_LIBS=ON`.

  * For more options on customizing the build, see the [CMakeLists.txt](https://github.com/jbeder/yaml-cpp/blob/master/CMakeLists.txt) file.

#### 2. Build it!
  * The command you'll need to run depends on the generator you chose earlier.

**Note:** To clean up, just remove the `build` directory.

## Recent Releases

[yaml-cpp 0.6.0](https://github.com/jbeder/yaml-cpp/releases/tag/yaml-cpp-0.6.0) released! This release requires C++11, and no longer depends on Boost.

[yaml-cpp 0.3.0](https://github.com/jbeder/yaml-cpp/releases/tag/release-0.3.0) is still available if you want the old API.

**The old API will continue to be supported, and will still receive bugfixes!** The 0.3.x and 0.4.x versions will be old API releases, and 0.5.x and above will all be new API releases.

# API Documentation 

The autogenerated API reference is hosted on [CodeDocs](https://codedocs.xyz/jbeder/yaml-cpp/index.html)

# Third Party Integrations

The following projects are not officially supported:

- [Qt wrapper](https://gist.github.com/brcha/d392b2fe5f1e427cc8a6)
- [UnrealEngine Wrapper](https://github.com/jwindgassen/UnrealYAML)
