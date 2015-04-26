Require Import Io.All.
Require Model.
Require Import Semantics.
Require Trace.

Module C.
  Module DeadLockFree.
    Inductive t {E S A} (m : Model.t E S) (s : S) (x : Choose.t E A) : Prop :=
    | Ret : forall v, Choose.LastStep.t x v -> t m s x
    | Call : forall c x' s',
      Choose.Step.t m c s x x' s' ->
      (forall c x' s', Choose.Step.t m c s x x' s' -> t m s' x') ->
      t m s x.
  End DeadLockFree.
End C.

Module Choose.
  Module DeadLockFree.
    Inductive t {E S A} (m : Model.t E S) (s : S) (x : Choose.t E A) : Prop :=
    | Ret : forall v, Choose.LastStep.t x v -> t m s x
    | Call : forall c x' s',
      Choose.Step.t m c s x x' s' ->
      (forall c x' s', Choose.Step.t m c s x x' s' -> t m s' x') ->
      t m s x.
  End DeadLockFree.
End Choose.
