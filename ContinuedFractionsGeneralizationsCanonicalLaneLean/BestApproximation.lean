import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.ContinuedFractionsGeneralizationsCanonicalLaneLean

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure BestApproximation (α : ℚ) where
  fraction : GeneralizedContinuedFraction
  isBest : Prop
  error : ℚ
  errorInequality : error ≤ 1 / (fraction.depth.succ ^ 2 : ℚ)

structure BestApproximationEvidence {α : ℚ} (B : BestApproximation α) where
  isBestClosed : B.isBest
  errorInequalityClosed : B.errorInequality

def BestApproximationClosed {α : ℚ} (B : BestApproximation α) : Prop :=
  B.isBest ∧ B.errorInequality

theorem best_approximation_closed_from_evidence {α : ℚ} (B : BestApproximation α) (E : BestApproximationEvidence B) :
    BestApproximationClosed B := by
  exact And.intro E.isBestClosed E.errorInequalityClosed

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse