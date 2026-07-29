import CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalFanDecomposition

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalStableIntersectionPackage (V1 V2 : TropicalVariety) where
  intersection : TropicalVariety
  stableIntersectionFormula : Prop
  dimensionCount : Prop
  cycleClassCompatibility : Prop

structure TropicalStableIntersectionEvidence (V1 V2 : TropicalVariety) 
    (S : TropicalStableIntersectionPackage V1 V2) where
  stableFormulaClosed : S.stableIntersectionFormula
  dimensionCountClosed : S.dimensionCount
  cycleCompatibilityClosed : S.cycleClassCompatibility

def TropicalStableIntersectionClosed (V1 V2 : TropicalVariety) 
    (S : TropicalStableIntersectionPackage V1 V2) : Prop :=
  S.stableIntersectionFormula ∧ S.dimensionCount ∧ S.cycleClassCompatibility

theorem tropical_stable_intersection_closed_from_evidence (V1 V2 : TropicalVariety) 
    (S : TropicalStableIntersectionPackage V1 V2) (E : TropicalStableIntersectionEvidence V1 V2 S) :
    TropicalStableIntersectionClosed V1 V2 S := by
  exact And.intro E.stableFormulaClosed (And.intro E.dimensionCountClosed E.cycleCompatibilityClosed)

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse