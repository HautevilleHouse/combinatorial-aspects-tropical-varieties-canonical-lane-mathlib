import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalCyclePackage where
  balancedConeCycle : Prop
  effectiveCycle : Prop
  tropicalBettiNumbers : Prop
  minkowskiWeightStructure : Prop

structure TropicalCycleEvidence (C : TropicalCyclePackage) where
  balancedConeCycleClosed : C.balancedConeCycle
  effectiveCycleClosed : C.effectiveCycle
  tropicalBettiNumbersClosed : C.tropicalBettiNumbers
  minkowskiWeightStructureClosed : C.minkowskiWeightStructure

def TropicalCycleClosed (C : TropicalCyclePackage) : Prop :=
  C.balancedConeCycle ∧ C.effectiveCycle ∧ C.tropicalBettiNumbers ∧ C.minkowskiWeightStructure

theorem tropical_cycle_closed_from_evidence (C : TropicalCyclePackage)
    (E : TropicalCycleEvidence C) : TropicalCycleClosed C := by
  exact And.intro E.balancedConeCycleClosed
    (And.intro E.effectiveCycleClosed
      (And.intro E.tropicalBettiNumbersClosed E.minkowskiWeightStructureClosed))

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
