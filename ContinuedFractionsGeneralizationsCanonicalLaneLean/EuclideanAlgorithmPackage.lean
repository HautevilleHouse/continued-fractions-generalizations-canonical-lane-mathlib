import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure EuclideanAlgorithmPackage where
  steps : List ℤ
  terminated : Prop

def EuclideanAlgorithmClosed (E : EuclideanAlgorithmPackage) : Prop := E.terminated

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse