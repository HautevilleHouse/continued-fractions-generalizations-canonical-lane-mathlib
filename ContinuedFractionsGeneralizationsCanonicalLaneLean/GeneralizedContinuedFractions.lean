import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure GeneralizedContinuedFractionsPackage where
  parent : AdmissibleClass
  partialNumerators : Prop
  partialDenominators : Prop
  tailOperation : Prop
  equivalenceTransform : Prop

structure GeneralizedContinuedFractionsEvidence (G : GeneralizedContinuedFractionsPackage) where
  partialNumeratorsClosed : G.partialNumerators
  partialDenominatorsClosed : G.partialDenominators
  tailOperationClosed : G.tailOperation
  equivalenceTransformClosed : G.equivalenceTransform

def GeneralizedContinuedFractionsClosed (G : GeneralizedContinuedFractionsPackage) : Prop :=
  G.partialNumerators ∧ G.partialDenominators ∧ G.tailOperation ∧ G.equivalenceTransform

theorem generalized_continued_fractions_closed_from_evidence
    (G : GeneralizedContinuedFractionsPackage) (E : GeneralizedContinuedFractionsEvidence G) :
    GeneralizedContinuedFractionsClosed G := by
  exact And.intro E.partialNumeratorsClosed
    (And.intro E.partialDenominatorsClosed
      (And.intro E.tailOperationClosed E.equivalenceTransformClosed))

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
