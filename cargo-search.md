% CARGO-SEARCH(1) The Rust package manager  | Cargo Manual
%
% May 2016

# NAME
cargo-search - Search packages in crates.io


# SYNOPSIS
*cargo search* \[OPTIONS] \<QUERY>...


# DESCRIPTION
Search packages in *crates.io*.


# OPTIONS

-h, --help
:   Print this message.

--host *HOST*
:   Host of a registry to search in.

--limit *LIMIT*
:   Limit the number of results (default: 10, max: 100).

-v, --verbose
:   Use verbose output.

-q, --quiet
:   No output printed to stdout.

--color *WHEN*
:   Coloring: auto, always, never.


# SEE ALSO
cargo(1), cargo-install(1), cargo-publish(1)


# COPYRIGHT
This work is dual-licensed under Apache 2.0 and MIT terms.
See *COPYRIGHT* file in the cargo source distribution.
