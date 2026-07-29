import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuedFractionsGeneralizationsCanonicalLaneLean.ContinuedFractionGenerators

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure ConvergentApproximant (α : Type) [Field α] (gen : ContinuedFractionGenerator α) where
  numerator : α
  denominator : α
  errorBound : Prop

def ConvergentApproximantClosed {α : Type} [Field α] (gen : ContinuedFractionGenerator α) (c : ConvergentApproximant α gen) : Prop :=
  c.errorBound

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
