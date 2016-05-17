% CARGO-BENCH(1) The Rust package manager  | Cargo Manual
%
% May 2016

# NAME
cargo-bench - Execute benchmarks of a package


# SYNOPSIS
*cargo bench* \[OPTIONS] \[--] \[\<ARGS>...]


# DESCRIPTION
Execute all benchmarks of a local package.

All of the trailing arguments are passed to the benchmark binaries generated for
filtering benchmarks and generally providing options configuring how they run.

If the **--package** argument is given, then *SPEC* is a package id
specification which indicates which package should be built. If it is not given,
then the current package is built. For more information on *SPEC* and its
format, see the "cargo help pkgid" command.

The **--jobs** argument affects the building of the benchmark executable but
does not affect how many jobs are used when running the benchmarks.

Compilation can be customized with the 'bench' profile in the manifest.


# OPTIONS

-h, --help
:   Print this message.

--lib
:   Benchmark only this package's library.

--bin *NAME*
:   Benchmark only the specified binary.

--example *NAME*
:   Benchmark only the specified example.

--test *NAME*
:   Benchmark only the specified test target.

--bench *NAME*
:   Benchmark only the specified bench target.

--no-run
:   Compile, but don't run benchmarks.

-p *SPEC*, --package *SPEC ...*
:   Package to benchmarks for.

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
Execute all the benchmarks of the current package

    $ cargo bench

Execute the BENCH benchmark

    $ cargo bench --bench BENCH


# SEE ALSO
cargo(1), cargo-build(1), cargo-test(1)


# COPYRIGHT
This work is dual-licensed under Apache 2.0 and MIT terms.
See *COPYRIGHT* file in the cargo source distribution.
