import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure KhintchineLevyTheoremPackage where
  parent : AdmissibleClass
  gaussMapDefined : Prop
  invariantMeasure : Prop
  entropyFormula : Prop
  khintchineConstant : Prop
  levyConstant : Prop

structure KhintchineLevyTheoremEvidence (K : KhintchineLevyTheoremPackage) where
  gaussMapDefinedClosed : K.gaussMapDefined
  invariantMeasureClosed : K.invariantMeasure
  entropyFormulaClosed : K.entropyFormula
  khintchineConstantClosed : K.khintchineConstant
  levyConstantClosed : K.levyConstant

def KhintchineLevyTheoremClosed (K : KhintchineLevyTheoremPackage) : Prop :=
  K.gaussMapDefined ∧ K.invariantMeasure ∧ K.entropyFormula ∧
  K.khintchineConstant ∧ K.levyConstant

theorem khintchine_levy_theorem_closed_from_evidence
    (K : KhintchineLevyTheoremPackage) (E : KhintchineLevyTheoremEvidence K) :
    KhintchineLevyTheoremClosed K := by
  exact And.intro E.gaussMapDefinedClosed
    (And.intro E.invariantMeasureClosed
      (And.intro E.entropyFormulaClosed
        (And.intro E.khintchineConstantClosed E.levyConstantClosed)))

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
