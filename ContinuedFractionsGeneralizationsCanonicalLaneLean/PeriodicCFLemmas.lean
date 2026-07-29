import canonicalLaneMathlib.AdmissibleClass
import ContinuedFractionsGeneralizationsCanonicalLaneLean.ContinuedFractionTypes

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure PeriodicContinuedFraction (α : Type) [CommSemiring α] [Field α] where
  preperiod : List α
  period : List α
  periodicLength : ℕ
  preperiodLength : ℕ
  isEventuallyPeriodic : Prop

structure PeriodicCFEvidence (α : Type) [CommSemiring α] [Field α] (pcf : PeriodicContinuedFraction α) where
  periodNonempty : pcf.period ≠ []
  periodRepetition : ∀ n : ℕ, (pcf.preperiod ++ List.join (List.replicate (n+1) pcf.period)) = (pcf.preperiod ++ List.join (List.replicate n pcf.period) ++ pcf.period)
  preperiodFinite : pcf.preperiod.length < 1000000

def PeriodicCFClosed (α : Type) [CommSemiring α] [Field α] (pcf : PeriodicContinuedFraction α) : Prop :=
  pcf.isEventuallyPeriodic

theorem periodic_cf_closed_from_evidence (α : Type) [CommSemiring α] [Field α] (pcf : PeriodicContinuedFraction α) (e : PeriodicCFEvidence α pcf) : PeriodicCFClosed α pcf := by
  exact e.periodNonempty

structure LagrangeTheoremAssumptions (α : Type) [CommSemiring α] [Field α] [LinearOrderedField α] where
  x : α
  xIrrational : ¬ ∃ r : ℚ, (r : α) = x
  xQuadratic : ∃ a b c : α, a * x^2 + b * x + c = 0 ∧ a ≠ 0

def LagrangeTheoremConclusion (α : Type) [CommSemiring α] [Field α] [LinearOrderedField α] (x : α) : Prop :=
  ∃ pcf : PeriodicContinuedFraction α, pcf.isEventuallyPeriodic ∧ (SimpleContinuedFraction.mk (pcf.preperiod ++ pcf.period) (some pcf.period) pcf.periodicLength pcf.preperiodLength true : SimpleContinuedFraction α) = (by
    sorry)
  -- Placeholder: the simple continued fraction of x is eventually periodic

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse