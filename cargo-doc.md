% CARGO-DOC(1) The Rust package manager  | Cargo Manual
%
% May 2016

# NAME
cargo-doc - Build a package's documentation


# SYNOPSIS
*cargo doc* \[OPTIONS]


# DESCRIPTION
Build a package's documentation.

By default the documentation for the local package and all dependencies is
built. The output is all placed in 'target/doc' in rustdoc's usual format.

If the **--package** argument is given, then *SPEC* is a package id
specification which indicates which package should be built. If it is not given,
then the current package is built. For more information on *SPEC* and its
format, see the "cargo help pkgid" command.


# OPTIONS

-h, --help
:   Print this message.

-p *SPEC*, --package *SPEC ...*
:   Package to document.

--open
:   Opens the docs in a browser after the operation.

--no-deps
:   Don't build documentation for dependencies.

-j *N*, --jobs *N*
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
Build a local package documentation in 'target/doc'

    $ cargo doc


# SEE ALSO
cargo(1), cargo-build(1)


# COPYRIGHT
This work is dual-licensed under Apache 2.0 and MIT terms.
See *COPYRIGHT* file in the cargo source distribution.
