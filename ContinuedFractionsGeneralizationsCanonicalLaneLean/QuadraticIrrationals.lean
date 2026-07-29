import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.ContinuedFractionsGeneralizationsCanonicalLaneLean

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure QuadraticIrrational (α : ℚ) where
  minimalPolynomial : ℚ[X]
  degreeTwo : degree minimalPolynomial = 2
  root : α = rootOfMinimalPolynomial minimalPolynomial

structure PeriodicContinuedFractionExtension extends GeneralizedContinuedFraction where
  representsQuadraticIrrational : Prop
  periodicTail : Prop

structure QuadraticIrrationalEvidence (Q : QuadraticIrrational ℚ) where
  periodicExpansion : PeriodicContinuedFractionExtension
  closureCondition : Prop

def QuadraticIrrationalClosed (Q : QuadraticIrrational ℚ) : Prop :=
  Q.root ∧ Q.degreeTwo

def periodic_continued_fraction_closure (P : PeriodicContinuedFractionExtension) : Prop :=
  P.representsQuadraticIrrational ∧ P.periodicTail

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse