import ContinuedFractionsGeneralizationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuedFractionsGeneralizationsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "continued-fractions-generalizations-canonical-lane",
    theoremName := "Continued Fractions Generalizations Canonical Lane",
    theoremObject := "Generalized continued fraction expansions, convergence criteria, and admissible rational approximation",
    classicalBoundary := "Classical continued fraction theory at analytic and arithmetic boundaries",
    constrainedStatement := "admissible-class closure under the bridge/gate composition",
    certificateLane := "admissible_class_constrained",
    carriedRemainder := "Carried remainder: classical boundary not fully internalized"
  }

end ContinuedFractionsGeneralizationsCanonicalLaneLean
end HautevilleHouse