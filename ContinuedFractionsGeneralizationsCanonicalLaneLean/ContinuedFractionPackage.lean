import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure ContinuedFractionPackage where
  alpha : Type u
  partialQuotients : Type v
  convergents : Type w
  infiniteSequence : Prop
  limitExists : Prop
  irrational : Prop

structure ContinuedFractionEvidence (C : ContinuedFractionPackage) where
  infiniteSequenceClosed : C.infiniteSequence
  limitExistsClosed : C.limitExists
  irrationalClosed : C.irrational

def ContinuedFractionClosed (C : ContinuedFractionPackage) : Prop :=
  C.infiniteSequence ∧ C.limitExists ∧ C.irrational

theorem continued_fraction_closed_from_evidence (C : ContinuedFractionPackage) (E : ContinuedFractionEvidence C) :
    ContinuedFractionClosed C := by
  exact And.intro E.infiniteSequenceClosed (And.intro E.limitExistsClosed E.irrationalClosed)

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
