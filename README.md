# Bash's build

Ragnarok's build of the bash shell. In reality, this package is only
rebuilt to avoid providing /etc/skel/.profile, which is already provided
by the ragnarok-files package, but since a rebuild has to be done, might
as well use clang and some extra hardening options.
