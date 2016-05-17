% CARGO-PUBLISH(1) The Rust package manager  | Cargo Manual
%
% May 2016

# NAME
cargo-publish - Upload a package to the registry.


# SYNOPSIS
*cargo publish* \[OPTIONS]


# DESCRIPTION
Upload a package to the registry.


# OPTIONS

-h, --help
:   Print this message.

--host *HOST*
:   Host to upload the package to.

--host *HOST*
:   Host to upload the package to.

--token *TOKEN*
:   Token to use when uploading.

--no-verify
:   Don't verify package tarball before publish.

--manifest-path *PATH*
:   Path to the manifest of the package to publish.

-v, --verbose
:   Use verbose output.

-q, --quiet
:   No output printed to stdout.

--color *WHEN*
:   Coloring: auto, always, never.


# SEE ALSO
cargo(1), cargo-install(1), cargo-search(1)


# COPYRIGHT
This work is dual-licensed under Apache 2.0 and MIT terms.
See *COPYRIGHT* file in the cargo source distribution.
