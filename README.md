# IO Checker
Automatic checker for lock-free concurrent programs in Coq.

## Run
Using [OPAM for Coq](http://coq-blog.clarus.me/use-opam-for-coq.html), add the repositories:

    opam repo add coq-stable https://github.com/coq/repo-stable.git
    opam repo add coq-unstable https://github.com/coq/repo-unstable.git

and install the dependencies:

    opam install -j4 -v coq:io:system

Compile the Coq code:

    ./configure.sh
    make
