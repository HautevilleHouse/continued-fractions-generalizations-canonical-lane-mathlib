import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure SimpleContinuedFraction (a : Type) [Semiring a] where
  terms : List a
  tailPeriodic : Option (List a)
  periodicLength : Nat
  preperiodLength : Nat
  infinite : Bool

structure RegularContinuedFraction (α : Type) [CommSemiring α] [OrderedSemiring α] extends SimpleContinuedFraction α where
  positiveTerms : ∀ a ∈ terms, a > 0
  tailPositive : ∀ a ∈ tailPeriodic.getD [], a > 0

structure GeneralizedContinuedFraction (α : Type) [CommSemiring α] where
  numerators : List α
  denominators : List α
  infinite : Bool
  convergentComputed : Prop

structure ProjectiveContinuedFraction (α : Type) [CommSemiring α] [DivisionRing α] where
  a : List α
  b : List α
  moebiusCoeffs : Option (α × α × α × α)

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse