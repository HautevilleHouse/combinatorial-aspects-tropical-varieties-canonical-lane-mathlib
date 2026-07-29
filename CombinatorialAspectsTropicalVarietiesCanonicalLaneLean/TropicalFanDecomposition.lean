import CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalVarietyClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalFanPackage (V : TropicalVariety) where
  fan : Type u
  cones : List (fan)
  balancedCondition : Prop
  pureDimension : Prop
  intersectionProperties : Prop

structure TropicalFanEvidence (V : TropicalVariety) (F : TropicalFanPackage V) where
  balancedClosed : F.balancedCondition
  pureClosed : F.pureDimension
  intersectionClosed : F.intersectionProperties

def TropicalFanClosed (V : TropicalVariety) (F : TropicalFanPackage V) : Prop :=
  F.balancedCondition ∧ F.pureDimension ∧ F.intersectionProperties

theorem tropical_fan_closed_from_evidence (V : TropicalVariety) (F : TropicalFanPackage V) 
    (E : TropicalFanEvidence V F) : TropicalFanClosed V F := by
  exact And.intro E.balancedClosed (And.intro E.pureClosed E.intersectionClosed)

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse