import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ContinuedFractionsGeneralizationsCanonicalLaneLean.ConvergentApproximant

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure ErrorBound (α : Type) [Field α] [OrderedField α] (gen : ContinuedFractionGenerator α) where
  lowerBound : α
  upperBound : α
  boundVerified : Prop

def ErrorBoundClosed {α : Type} [Field α] [OrderedField α] (gen : ContinuedFractionGenerator α) (e : ErrorBound α gen) : Prop :=
  e.boundVerified

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
