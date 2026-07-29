import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure RationalApproximationBoundsPackage where
  parent : AdmissibleClass
  errorBound : Prop
  dirichletTheorem : Prop
  hurwitzTheorem : Prop
  bestApproximationProperty : Prop

structure RationalApproximationBoundsEvidence (R : RationalApproximationBoundsPackage) where
  errorBoundClosed : R.errorBound
  dirichletTheoremClosed : R.dirichletTheorem
  hurwitzTheoremClosed : R.hurwitzTheorem
  bestApproximationPropertyClosed : R.bestApproximationProperty

def RationalApproximationBoundsClosed (R : RationalApproximationBoundsPackage) : Prop :=
  R.errorBound ∧ R.dirichletTheorem ∧ R.hurwitzTheorem ∧ R.bestApproximationProperty

theorem rational_approximation_bounds_closed_from_evidence
    (R : RationalApproximationBoundsPackage) (E : RationalApproximationBoundsEvidence R) :
    RationalApproximationBoundsClosed R := by
  exact And.intro E.errorBoundClosed
    (And.intro E.dirichletTheoremClosed
      (And.intro E.hurwitzTheoremClosed E.bestApproximationPropertyClosed))

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
