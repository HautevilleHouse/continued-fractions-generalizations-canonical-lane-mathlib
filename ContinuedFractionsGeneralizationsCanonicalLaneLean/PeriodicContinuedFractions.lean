import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure PeriodicContinuedFractionsPackage where
  parent : AdmissibleClass
  periodDetected : Prop
  quadraticIrrational : Prop
  galoisConjugate : Prop
  pellEquationRelation : Prop

structure PeriodicContinuedFractionsEvidence (P : PeriodicContinuedFractionsPackage) where
  periodDetectedClosed : P.periodDetected
  quadraticIrrationalClosed : P.quadraticIrrational
  galoisConjugateClosed : P.galoisConjugate
  pellEquationRelationClosed : P.pellEquationRelation

def PeriodicContinuedFractionsClosed (P : PeriodicContinuedFractionsPackage) : Prop :=
  P.periodDetected ∧ P.quadraticIrrational ∧ P.galoisConjugate ∧ P.pellEquationRelation

theorem periodic_continued_fractions_closed_from_evidence
    (P : PeriodicContinuedFractionsPackage) (E : PeriodicContinuedFractionsEvidence P) :
    PeriodicContinuedFractionsClosed P := by
  exact And.intro E.periodDetectedClosed
    (And.intro E.quadraticIrrationalClosed
      (And.intro E.galoisConjugateClosed E.pellEquationRelationClosed))

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
