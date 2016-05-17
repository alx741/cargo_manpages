% CARGO-INIT(1) The Rust package manager  | Cargo Manual
%
% May 2016

# NAME
cargo-init - Create a new cargo package in the current directory


# SYNOPSIS
*cargo init* \[OPTIONS]


# DESCRIPTION
Create a new cargo package in the current directory.

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
Initialize a binary cargo package in the current directory

    $ cargo init --bin


# SEE ALSO
cargo(1), cargo-new(1)


# COPYRIGHT
This work is dual-licensed under Apache 2.0 and MIT terms.
See *COPYRIGHT* file in the cargo source distribution.
