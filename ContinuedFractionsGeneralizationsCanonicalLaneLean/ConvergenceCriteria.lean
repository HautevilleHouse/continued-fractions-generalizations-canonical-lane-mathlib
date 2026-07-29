import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.ContinuedFractionsGeneralizationsCanonicalLaneLean

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure ConvergenceCriteria where
  isConvergent : Prop
  limitExists : Prop
  rateOfConvergence : ℕ → ℚ
  rateBound : Prop

structure ConvergenceEvidence (C : ConvergenceCriteria) where
  isConvergentClosed : C.isConvergent
  limitExistsClosed : C.limitExists
  rateBoundClosed : C.rateBound

def ConvergenceCriteriaClosed (C : ConvergenceCriteria) : Prop :=
  C.isConvergent ∧ C.limitExists ∧ C.rateBound

theorem convergence_closed_from_evidence (C : ConvergenceCriteria) (E : ConvergenceEvidence C) :
    ConvergenceCriteriaClosed C := by
  exact And.intro E.isConvergentClosed (And.intro E.limitExistsClosed E.rateBoundClosed)

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse