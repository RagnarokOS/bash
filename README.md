# Bash

This repo does not contain the full bash source. For some stupid reason,
if the source is maintained in a repo the package refuses to build. It
has to be fetched from Debian instead. 

Either way, this package has to be rebuilt to remove etc/skel/.profile,
since this file is provided by the ragnarok-base package.
