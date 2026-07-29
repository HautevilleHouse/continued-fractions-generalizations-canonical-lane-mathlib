import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure QuadraticIrrationalPackage where
  discriminant : ℤ
  period : List ℕ

def QuadraticIrrationalClosed (Q : QuadraticIrrationalPackage) : Prop := True

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse