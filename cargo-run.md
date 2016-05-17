% CARGO-RUN(1) The Rust package manager  | Cargo Manual
%
% May 2016

# NAME
cargo-run - Run the current project


# SYNOPSIS
*cargo run* \[OPTIONS] \[--] \[\<ARGS>...]


# DESCRIPTION
Run the main binary of the local package (src/main.rs).

If neither **--bin** nor **--example** are given, then if the project only has
one bin target it will be run. Otherwise **--bin** specifies the bin target to
run, and **--example** specifies the example target to run. At most one of
**--bin** or **--example** can be provided.

All of the trailing arguments are passed to the binary to run. If you're passing
arguments to both Cargo and the binary, the ones after **--** go to the binary,
the ones before go to Cargo.


# OPTIONS

-h, --help
:   Print this message.

--bin *NAME*
:   Name of the bin target to run.

--example *NAME*
:   Name of the example target to run.

-j *IN*, --jobs *IN*
:   The number of jobs to run in parallel.

--release
:   Build artifacts in release mode, with optimizations.

--features *FEATURES*
:   Space-separated list of features to also build.

--no-default-features
:   Do not build the `default` feature.

--target *TRIPLE*
:   Build for the target triple.

--manifest-path *PATH*
:   Path to the manifest to compile.

-v, --verbose
:   Use verbose output.

-q, --quiet
:   No output printed to stdout.

--color *WHEN*
:   Coloring: auto, always, never.


# EXAMPLES
Run the main binary of the current package

    $ cargo run


# SEE ALSO
cargo(1), cargo-new(1), cargo-init(1), cargo-build(1)


# COPYRIGHT
This work is dual-licensed under Apache 2.0 and MIT terms.
See *COPYRIGHT* file in the cargo source distribution.
