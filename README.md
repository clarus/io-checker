# IO Checker
Automatic checker for lock-free concurrent programs in Coq.

## History

* now
* design of a source language without `let`, because this construct complicates the equality of terms. An other advantage of reasoning by handlers is that the return type `A` of an expression can by a type parameter in the inductive definition.
* back to the idea of highly dependent step predicate in `Type` with compilation to `Choose.t`, being ready to use some `replace by admit` to simplify dependent proofs (branch `choose-with-assert`)
* ... (a huge part of the history is missing)
* beginning
