import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure ConvergentConvergencePackage where
  convergents : List ℚ
  limitExists : Prop
  limitValue : ℚ

def ConvergentConvergenceClosed (C : ConvergentConvergencePackage) : Prop := C.limitExists

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse