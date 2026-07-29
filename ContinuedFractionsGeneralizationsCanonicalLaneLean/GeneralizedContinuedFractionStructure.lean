import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure GeneralizedContinuedFraction where
  partialNumerators : List ℚ
  partialDenominators : List ℚ
  depth : ℕ

structure PeriodicContinuedFraction extends GeneralizedContinuedFraction where
  periodLength : ℕ
  prePeriodLength : ℕ

structure RationalApproximant (α : ℚ) where
  fraction : GeneralizedContinuedFraction
  error : ℚ
  bound : Prop

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse