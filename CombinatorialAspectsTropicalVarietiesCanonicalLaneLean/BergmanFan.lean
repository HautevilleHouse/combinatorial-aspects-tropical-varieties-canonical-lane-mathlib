import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

/-- The Bergman fan of a matroid. -/
structure BergmanFan where
  groundSet : Type u
  bases : Finset (Finset (groundSet))
  fan : TropicalFan
  maximalChambers : Prop
  balancedCondition : Prop
  dimensionMatches : Prop

/-- Evidence that a BergmanFan is closed. -/
structure BergmanFanEvidence (B : BergmanFan) where
  maximalChambersClosed : B.maximalChambers
  balancedConditionClosed : B.balancedCondition
  dimensionMatchesClosed : B.dimensionMatches

def BergmanFanClosed (B : BergmanFan) : Prop :=
  B.maximalChambers ∧ B.balancedCondition ∧ B.dimensionMatches

theorem bergman_fan_closed_from_evidence (B : BergmanFan)
    (E : BergmanFanEvidence B) : BergmanFanClosed B := by
  exact And.intro E.maximalChambersClosed
    (And.intro E.balancedConditionClosed E.dimensionMatchesClosed)

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse