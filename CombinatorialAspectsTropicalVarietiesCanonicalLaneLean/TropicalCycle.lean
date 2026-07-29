import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalHypersurface

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalCyclePackage {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} (H : TropicalHypersurfacePackage P) where
  weightedPolyhedralComplex : Type u
  dimension : Nat
  weightFunction : weightedPolyhedralComplex → ℤ
  balancingCondition : Prop
  rationalEquivalence : Prop
  intersectionProduct : Prop
  balancingConditionTerm : balancingCondition
  rationalEquivalenceTerm : rationalEquivalence
  intersectionProductTerm : intersectionProduct

structure TropicalCycleEvidence {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} {H : TropicalHypersurfacePackage P}
    (C : TropicalCyclePackage H) where
  balancingConditionClosed : C.balancingCondition
  rationalEquivalenceClosed : C.rationalEquivalence
  intersectionProductClosed : C.intersectionProduct

def TropicalCycleClosed {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} {H : TropicalHypersurfacePackage P}
    (C : TropicalCyclePackage H) : Prop :=
  C.balancingCondition ∧ C.rationalEquivalence ∧ C.intersectionProduct

theorem tropical_cycle_closed_from_evidence {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} {H : TropicalHypersurfacePackage P}
    (C : TropicalCyclePackage H) (E : TropicalCycleEvidence C) :
    TropicalCycleClosed C := by
  exact And.intro E.balancingConditionClosed
    (And.intro E.rationalEquivalenceClosed E.intersectionProductClosed)

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse