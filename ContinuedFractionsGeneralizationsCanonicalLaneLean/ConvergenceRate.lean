import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure ConvergenceRatePackage (C : ContinuedFractionPackage) where
  errorTerm : Type u
  exponent : ℝ
  exponentialConvergence : Prop
  diophantineApproximation : Prop
  bestApproximation : Prop

structure ConvergenceRateEvidence {C : ContinuedFractionPackage} (R : ConvergenceRatePackage C) where
  exponentialConvergenceClosed : R.exponentialConvergence
  diophantineApproximationClosed : R.diophantineApproximation
  bestApproximationClosed : R.bestApproximation

def ConvergenceRateClosed {C : ContinuedFractionPackage} (R : ConvergenceRatePackage C) : Prop :=
  R.exponentialConvergence ∧ R.diophantineApproximation ∧ R.bestApproximation

theorem convergence_rate_closed_from_evidence {C : ContinuedFractionPackage} (R : ConvergenceRatePackage C) (E : ConvergenceRateEvidence R) :
    ConvergenceRateClosed R := by
  exact And.intro E.exponentialConvergenceClosed (And.intro E.diophantineApproximationClosed E.bestApproximationClosed)

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
