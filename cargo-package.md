% CARGO-PACKAGE(1) The Rust package manager  | Cargo Manual
%
% May 2016

# NAME
cargo-package - Create a distributable tarball


# SYNOPSIS
*cargo package* \[OPTIONS]


# DESCRIPTION
Assemble the local package into a distributable tarball.


# OPTIONS

-h, --help
:   Print this message.

-l, --list
:   Print files included in a package without making one.

--no-verify
:   Don't verify the contents by building them.

--no-metadata
:   Ignore warnings about a lack of human-usable metadata.

--manifest-path *PATH*
:   Path to the manifest to compile.

-v, --verbose
:   Use verbose output.

-q, --quiet
:   No output printed to stdout.

--color *WHEN*
:   Coloring: auto, always, never.


# SEE ALSO
cargo(1), cargo-build(1)


# COPYRIGHT
This work is dual-licensed under Apache 2.0 and MIT terms.
See *COPYRIGHT* file in the cargo source distribution.
