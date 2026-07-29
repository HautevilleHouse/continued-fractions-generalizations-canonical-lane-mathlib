import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure CfnAdmittedObject where
  continuedFractionType : String
  approximationError : ℚ
  periodicity : Bool
  quadraticIrrational : Bool
  conclusion : approximationError < 1/1000

structure AdmissibleClass where
  object : CfnAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse