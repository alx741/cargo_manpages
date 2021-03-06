% CARGO-BUILD(1) The Rust package manager  | Cargo Manual
%
% May 2016

# NAME
cargo-build - Compile the current project


# SYNOPSIS
*cargo build* \[OPTIONS]


# DESCRIPTION
Compile a local package and all of its dependencies.

If the **--package** argument is given, then *SPEC* is a package id
specification which indicates which package should be built. If it is not given,
then the current package is built. For more information on *SPEC* and its
format, see the "cargo help pkgid" command.

Compilation can be configured via the use of profiles which are configured in
the manifest. The default profile for this command is *dev*, but passing the
**--release** flag will use the *release* profile instead.


# OPTIONS

-h, --help
:   Print this message.

-p *SPEC*, --package *SPEC ...*
:   Package to build.

-j *IN*, --jobs *IN*
:   The number of jobs to run in parallel.

--lib
:   Build only this package's library.

--bin *NAME*
:   Build only the specified binary.

--example *NAME*
:   Build only the specified example.

--test *NAME*
:   Build only the specified test target.

--bench *NAME*
:   Build only the specified benchmark target.

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
Build a local package and all of its dependencies

    $ cargo build

Build a package with optimizations

    $ cargo build --release


# SEE ALSO
cargo(1)


# COPYRIGHT
This work is dual-licensed under Apache 2.0 and MIT terms.
See *COPYRIGHT* file in the cargo source distribution.
