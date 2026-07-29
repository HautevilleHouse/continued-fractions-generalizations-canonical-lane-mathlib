import canonicalLaneMathlib.AdmissibleClass
open HautevilleHouse.ContinuedFractionsGeneralizationsCanonicalLaneLean

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure ConvergentRecurrence where
  numeratorSequence : ℕ → ℚ
  denominatorSequence : ℕ → ℚ
  initialN0 : ℚ
  initialN1 : ℚ
  initialD0 : ℚ
  initialD1 : ℚ
  recurrence : ∀ n : ℕ, numeratorSequence (n+2) = partialNumerators n • numeratorSequence (n+1) + numeratorSequence n
  denominatorRecurrence : ∀ n : ℕ, denominatorSequence (n+2) = partialDenominators n • denominatorSequence (n+1) + denominatorSequence n

structure ConvergentRecurrenceEvidence (R : ConvergentRecurrence) where
  recurrenceClosed : R.recurrence
  denominatorRecurrenceClosed : R.denominatorRecurrence

def ConvergentRecurrenceClosed (R : ConvergentRecurrence) : Prop :=
  R.recurrence ∧ R.denominatorRecurrence

theorem convergent_recurrence_closed_from_evidence (R : ConvergentRecurrence) (E : ConvergentRecurrenceEvidence R) :
    ConvergentRecurrenceClosed R := by
  exact And.intro E.recurrenceClosed E.denominatorRecurrenceClosed

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse