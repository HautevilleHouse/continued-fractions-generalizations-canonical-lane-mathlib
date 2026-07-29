import canonicalLaneMathlib.AdmissibleClass
import ContinuedFractionsGeneralizationsCanonicalLaneLean.ContinuedFractionTypes

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure Convergent (α : Type) [CommSemiring α] [Field α] (cf : GeneralizedContinuedFraction α) where
  index : ℕ
  value : α
  approximationError : α
  errorBound : Prop

structure ConvergentEvidence {α : Type} [CommSemiring α] [Field α] {cf : GeneralizedContinuedFraction α} (c : Convergent α cf) where
  indexValid : c.index ≤ cf.numerators.length
  valueComputed : c.value ≠ 0
  errorBoundClosed : c.errorBound

def ConvergentClosed {α : Type} [CommSemiring α] [Field α] {cf : GeneralizedContinuedFraction α} (c : Convergent α cf) : Prop :=
  c.errorBound

theorem convergent_closed_from_evidence {α : Type} [CommSemiring α] [Field α] {cf : GeneralizedContinuedFraction α} (c : Convergent α cf) (e : ConvergentEvidence c) : ConvergentClosed c := by
  exact e.errorBoundClosed

structure BestApproximation (α : Type) [CommSemiring α] [Field α] [LinearOrderedField α] where
  term : ℕ
  rationalApproximant : ℚ
  error : α
  isBest : Prop

structure BestApproximationEvidence {α : Type} [CommSemiring α] [Field α] [LinearOrderedField α] (bA : BestApproximation α) where
  errorBound : bA.error < 1 / (bA.rationalApproximant.den ^ 2 : α)
  isBestClosed : bA.isBest

def BestApproximationClosed {α : Type} [CommSemiring α] [Field α] [LinearOrderedField α] (bA : BestApproximation α) : Prop :=
  bA.isBest

theorem best_approximation_closed_from_evidence {α : Type} [CommSemiring α] [Field α] [LinearOrderedField α] (bA : BestApproximation α) (e : BestApproximationEvidence α) : BestApproximationClosed bA := by
  exact e.isBestClosed

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse