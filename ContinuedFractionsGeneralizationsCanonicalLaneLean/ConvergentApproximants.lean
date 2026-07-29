import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure ConvergentApproximantsPackage where
  parent : AdmissibleClass
  sequenceDefined : Prop
  recurrenceRelation : Prop
  bestApproximation : Prop
  convergentsConverge : Prop

structure ConvergentApproximantsEvidence (C : ConvergentApproximantsPackage) where
  sequenceDefinedClosed : C.sequenceDefined
  recurrenceRelationClosed : C.recurrenceRelation
  bestApproximationClosed : C.bestApproximation
  convergentsConvergeClosed : C.convergentsConverge

def ConvergentApproximantsClosed (C : ConvergentApproximantsPackage) : Prop :=
  C.sequenceDefined ∧ C.recurrenceRelation ∧ C.bestApproximation ∧ C.convergentsConverge

theorem convergent_approximants_closed_from_evidence
    (C : ConvergentApproximantsPackage) (E : ConvergentApproximantsEvidence C) :
    ConvergentApproximantsClosed C := by
  exact And.intro E.sequenceDefinedClosed
    (And.intro E.recurrenceRelationClosed
      (And.intro E.bestApproximationClosed E.convergentsConvergeClosed))

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
