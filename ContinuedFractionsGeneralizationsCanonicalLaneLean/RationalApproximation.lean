import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuedFractionsGeneralizationsCanonicalLaneLean.ConvergentApproximant

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure RationalApproximation (α : Type) [Field α] (gen : ContinuedFractionGenerator α) where
  approximants : ℕ → ConvergentApproximant α gen
  rateConverges : Prop
  bestApproximation : Prop

def RationalApproximationClosed {α : Type} [Field α] (gen : ContinuedFractionGenerator α) (r : RationalApproximation α gen) : Prop :=
  r.rateConverges ∧ r.bestApproximation

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
