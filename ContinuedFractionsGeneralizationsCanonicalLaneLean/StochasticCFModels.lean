import canonicalLaneMathlib.AdmissibleClass
import ContinuedFractionsGeneralizationsCanonicalLaneLean.ContinuedFractionTypes

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure StochasticContinuedFraction (α : Type) [Semiring α] [MeasureTheory.MeasureSpace α] where
  randomTerms : ℕ → α
  probabilityMeasure : MeasureTheory.Measure (ℕ → α)
  expectationConvergent : Prop
  distributionConverges : Prop

structure StochasticCFEvidence (α : Type) [Semiring α] [MeasureTheory.MeasureSpace α] (scf : StochasticContinuedFraction α) where
  expectationFinite : scf.expectationConvergent
  distributionClosed : scf.distributionConverges
  measureCompatible : scf.probabilityMeasure ≠ 0

def StochasticCFClosed (α : Type) [Semiring α] [MeasureTheory.MeasureSpace α] (scf : StochasticContinuedFraction α) : Prop :=
  scf.expectationConvergent ∧ scf.distributionConverges

theorem stochastic_cf_closed_from_evidence (α : Type) [Semiring α] [MeasureTheory.MeasureSpace α] (scf : StochasticContinuedFraction α) (e : StochasticCFEvidence α scf) : StochasticCFClosed α scf := by
  exact And.intro e.expectationFinite e.distributionClosed

structure ApplicationGenetics where
  alleleFrequency : SimpleContinuedFraction ℕ
  hardyWeinbergDeviation : SimpleContinuedFraction ℕ
  linkageEquilibrium : SimpleContinuedFraction ℕ
  populationModel : ℕ → ℕ
end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse