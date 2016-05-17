% CARGO-TEST(1) The Rust package manager  | Cargo Manual
%
% May 2016

# NAME
cargo-test - Execute unit and integration tests of a package


# SYNOPSIS
*cargo test* \[OPTIONS] \[--] \[\<ARGS>...]


# DESCRIPTION
Execute all unit and integration tests of a local package.

All of the trailing arguments are passed to the test binaries generated for
filtering tests and generally providing options configuring how they run. For
example, this will run all tests with the name 'foo' in their name:

    cargo test foo

If the **--package** argument is given, then 'SPEC' is a package id
specification which indicates which package should be tested. If it is not
given, then the current package is tested. For more information on 'SPEC' and
its format, see the "cargo help pkgid" command.

The **--jobs** argument affects the building of the test executable but does not
affect how many jobs are used when running the tests.

Compilation can be configured via the 'test' profile in the manifest.

By default the rust test harness hides output from test execution to keep
results readable. Test output can be recovered (e.g. for debugging) by passing
**--nocapture** to the test binaries:

    cargo test -- --nocapture


# OPTIONS

-h, --help
:   Print this message.

--lib
:   Test only this package's library.

--bin *NAME*
:   Test only the specified binary.

--example *NAME*
:   Test only the specified example.

--test *NAME*
:   Test only the specified integration test target.

--bench *NAME*
:   Test only the specified benchmark target.

--no-run
:   Compile, but don't run tests.

-p *SPEC*, --package *SPEC ...*
:   Package to run tests for.

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

--no-fail-fast
:   Run all tests regardless of failure.

-v, --verbose
:   Use verbose output.

-q, --quiet
:   No output printed to stdout.

--color *WHEN*
:   Coloring: auto, always, never.


# EXAMPLES
Execute all the unit and integration tests of the current package

    $ cargo test

Execute the BENCH benchmark

    $ cargo test --bench BENCH


# SEE ALSO
cargo(1), cargo-build(1)


# COPYRIGHT
This work is dual-licensed under Apache 2.0 and MIT terms.
See *COPYRIGHT* file in the cargo source distribution.
