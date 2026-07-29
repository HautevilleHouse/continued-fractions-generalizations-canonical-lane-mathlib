import canonicalLaneMathlib.AdmissibleClass
import ContinuedFractionsGeneralizationsCanonicalLaneLean.ContinuedFractionTypes

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure MoebiusTransform (α : Type) [CommSemiring α] [DivisionRing α] where
  a : α
  b : α
  c : α
  d : α
  det : α
  detNonZero : det ≠ 0

structure MoebiusAction (α : Type) [CommSemiring α] [DivisionRing α] where
  transform : MoebiusTransform α
  appliedTo : GeneralizedContinuedFraction α
  result : GeneralizedContinuedFraction α
  resultComputed : Prop

structure MoebiusEvidence (α : Type) [CommSemiring α] [DivisionRing α] (m : MoebiusAction α) where
  detNonZero : m.transform.detNonZero
  actionPreservesConvergent : ∀ n : ℕ, (Convergent α m.appliedTo n).value = (m.transform.a * (Convergent α m.result n).value + m.transform.b) / (m.transform.c * (Convergent α m.result n).value + m.transform.d)
  resultComputedClosed : m.resultComputed

def MoebiusActionClosed (α : Type) [CommSemiring α] [DivisionRing α] (m : MoebiusAction α) : Prop :=
  m.resultComputed ∧ m.transform.detNonZero

theorem moebius_action_closed_from_evidence (α : Type) [CommSemiring α] [DivisionRing α] (m : MoebiusAction α) (e : MoebiusEvidence α m) : MoebiusActionClosed α m := by
  exact And.intro e.resultComputedClosed e.detNonZero

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse