import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure QuadraticIrrational (α : Type) [Field α] where
  discriminant : α
  continuedFraction : ContinuedFractionGenerator α
  purelyPeriodic : Prop

def QuadraticIrrationalClosed {α : Type} [Field α] (q : QuadraticIrrational α) : Prop :=
  q.purelyPeriodic

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
