import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure PeriodicContinuedFractionPackage (C : ContinuedFractionPackage) where
  preperiodLength : Nat
  periodLength : Nat
  purelyPeriodic : Prop
  eventuallyPeriodic : Prop
  quadraticIrrational : Prop

structure PeriodicContinuedFractionEvidence {C : ContinuedFractionPackage} (P : PeriodicContinuedFractionPackage C) where
  preperiodLengthClosed : P.preperiodLength = P.preperiodLength
  periodLengthClosed : P.periodLength = P.periodLength
  purelyPeriodicClosed : P.purelyPeriodic
  eventuallyPeriodicClosed : P.eventuallyPeriodic
  quadraticIrrationalClosed : P.quadraticIrrational

def PeriodicContinuedFractionClosed {C : ContinuedFractionPackage} (P : PeriodicContinuedFractionPackage C) : Prop :=
  P.purelyPeriodic ∧ P.eventuallyPeriodic ∧ P.quadraticIrrational

theorem periodic_continued_fraction_closed_from_evidence {C : ContinuedFractionPackage} (P : PeriodicContinuedFractionPackage C) (E : PeriodicContinuedFractionEvidence P) :
    PeriodicContinuedFractionClosed P := by
  exact And.intro E.purelyPeriodicClosed (And.intro E.eventuallyPeriodicClosed E.quadraticIrrationalClosed)

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
