% CARGO-CLEAN(1) The Rust package manager  | Cargo Manual
%
% May 2016

# NAME
cargo-clean - Remove generated artifacts


# SYNOPSIS
*cargo clean* \[OPTIONS]


# DESCRIPTION
Remove artifacts that cargo has generated in the past.

If the **--package** argument is given, then *SPEC* is a package id
specification which indicates which package should be built. If it is not given,
then the current package is built. For more information on *SPEC* and its
format, see the "cargo help pkgid" command.


# OPTIONS

-h, --help
:   Print this message.

-p *SPEC*, --package *SPEC ...*
:  Package to clean artifacts for.

--manifest-path PATH
:   Path to the manifest to the package to clean.

--target TRIPLE
:   Target triple to clean output for (default all).

--release
:   Whether or not to clean release artifacts.

-v, --verbose
:   Use verbose output.

-q, --quiet
:   No output printed to stdout.

--color *WHEN*
:   Coloring: auto, always, never.


# EXAMPLES
Remove local package generated artifacts

    $ cargo clean

Clean release artifacts

    $ cargo clean --release


# SEE ALSO
cargo(1), cargo-build(1)


# COPYRIGHT
This work is dual-licensed under Apache 2.0 and MIT terms.
See *COPYRIGHT* file in the cargo source distribution.
