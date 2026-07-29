import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure ContinuedFractionMapPackage (C : ContinuedFractionPackage) where
  source : C.alpha → C.alpha
  contraction : Prop
  semiconjugacy : Prop
  invariantMeasure : Prop
  ergodicity : Prop

structure ContinuedFractionMapEvidence {C : ContinuedFractionPackage} (M : ContinuedFractionMapPackage C) where
  contractionClosed : M.contraction
  semiconjugacyClosed : M.semiconjugacy
  invariantMeasureClosed : M.invariantMeasure
  ergodicityClosed : M.ergodicity

def ContinuedFractionMapClosed {C : ContinuedFractionPackage} (M : ContinuedFractionMapPackage C) : Prop :=
  M.contraction ∧ M.semiconjugacy ∧ M.invariantMeasure ∧ M.ergodicity

theorem continued_fraction_map_closed_from_evidence {C : ContinuedFractionPackage} (M : ContinuedFractionMapPackage C) (E : ContinuedFractionMapEvidence M) :
    ContinuedFractionMapClosed M := by
  exact And.intro E.contractionClosed (And.intro E.semiconjugacyClosed (And.intro E.invariantMeasureClosed E.ergodicityClosed))

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
