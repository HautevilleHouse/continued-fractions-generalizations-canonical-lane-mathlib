import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure PeriodicExpansion (α : Type) [CommRing α] where
  period : ℕ
  preperiod : ℕ
  expansionClosed : Prop

def PeriodicExpansionClosed {α : Type} [CommRing α] (p : PeriodicExpansion α) : Prop :=
  p.expansionClosed

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse
