% CARGO-NEW(1) The Rust package manager  | Cargo Manual
%
% May 2016

# NAME
cargo-new - Create a new cargo package


# SYNOPSIS
*cargo new* \[OPTIONS] \<PATH>


# DESCRIPTION
Create a new cargo package at \<PATH>.

Use the **--vcs** option to control the version control system to use.


# OPTIONS

-h, --help
:   Print this message.

--vcs *VCS*
:   Initialize a new repository for the given version
    control system (git or hg) or do not initialize any version
    control at all (none) overriding a global configuration.

--bin
:   Use a binary instead of a library template.

--name *NAME*
:   Set the resulting package name.

-v, --verbose
:   Use verbose output.

-q, --quiet
:   No output printed to stdout.

--color *WHEN*
:   Coloring: auto, always, never.


# EXAMPLES
Create a binary cargo package in the current directory

    $ cargo new --bin ./


# SEE ALSO
cargo(1)


# COPYRIGHT
This work is dual-licensed under Apache 2.0 and MIT terms.
See *COPYRIGHT* file in the cargo source distribution.
