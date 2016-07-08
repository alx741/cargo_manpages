% CARGO-INSTALL(1) The Rust package manager  | Cargo Manual
%
% May 2016

# NAME
cargo-install - Install a Rust binary


# SYNOPSIS
*cargo install* \[OPTIONS] \<CRATE>
*cargo install* \[OPTIONS] --list


# DESCRIPTION
Install a Rust binary

This command manages Cargo's local set of install binary crates. Only packages
which have [[bin]] targets can be installed, and all binaries are installed into
the installation root's *bin* folder. The installation root is determined, in
order of precedence, by **--root**, *\$CARGO_INSTALL_ROOT*, the *install.root*
configuration key, and finally the home directory (which is either
*\$CARGO_HOME* if set or *\$HOME/.cargo* by default).

There are multiple sources from which a crate can be installed. The default
location is crates.io but the **--git** and **--path** flags can change this
source. If the source contains more than one package (such as *crates.io* or a
git repository with multiple crates) the **<crate>** argument is required to
indicate which crate should be installed.

Crates from crates.io can optionally specify the version they wish to install
via the **--vers** flags, and similarly packages from git repositories can
optionally specify the branch, tag, or revision that should be installed. If a
crate has multiple binaries, the **--bin** argument can selectively install only
one of them, and if you'd rather install examples the **--example** argument can
be used as well.

As a special convenience, omitting the \<crate> specification entirely will
install the crate in the current directory. That is, *install* is equivalent to
the more explicit "install --path .".

The **--list** option will list all installed packages (and their versions).


# OPTIONS

## Query options

--list
:   List all installed packages (and their versions).

## Specifying what crate to install

--vers *VERS*
:   Specify a version to install from crates.io.

--git *URL*
:   Git URL to install the specified crate from.

--branch *BRANCH*
:   Branch to use when installing from git.

--tag *TAG*
:   Tag to use when installing from git.

--rev *SHA*
:   Specific commit to use when installing from git.

--path *PATH*
:   Filesystem path to local crate to install.

## Built and install options

-h, --help
:   Print this message.

-j *N*, --jobs *N*
:   The number of jobs to run in parallel.

--features *FEATURES*
:   Space-separated list of features to activate.

-f, --force
:   Force overwriting existing crates or binaries

--no-default-features
:   Do not build the `default` feature.

--debug
:   Build in debug mode instead of release mode.

--bin *NAME*
:   Only install the binary NAME.

--example *EXAMPLE*
:   Install the example EXAMPLE instead of binaries.

--root *DIR*
:   Directory to install packages into.

-v, --verbose
:   Use verbose output.

-q, --quiet
:   No output printed to stdout.

--color *WHEN*
:   Coloring: auto, always, never.


# SEE ALSO
cargo(1), cargo-search(1), cargo-publish(1)


# COPYRIGHT
This work is dual-licensed under Apache 2.0 and MIT terms.
See *COPYRIGHT* file in the cargo source distribution.
