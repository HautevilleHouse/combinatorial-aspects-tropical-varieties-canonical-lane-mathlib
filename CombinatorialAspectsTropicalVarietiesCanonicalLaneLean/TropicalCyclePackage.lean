import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

/-- A tropical cycle is a weighted balanced polyhedral complex. -/
structure TropicalCycle where
  polyhedralComplex : Type u
  support : polyhedralComplex → Set ℝⁿ
  weights : polyhedralComplex → ℤ
  balancingCondition : Prop
  complexFinite : Prop
  pureDimension : Prop

/-- The fan associated to a tropical variety. -/
structure TropicalFan where
  rays : Type v
  multiplicities : rays → ℕ
  starBalanced : Prop

/-- A tropical subvariety of a toric variety. -/
structure TropicalSubvariety where
  ambient : TropicalFan
  ideal : Type w
  tropicalization : Prop
  setTheoretic : Set ℝⁿ
  balanced : Prop

/-- Evidence that a TropicalCycle is closed under bridge and gate. -/
structure TropicalCycleEvidence (C : TropicalCycle) where
  balancingConditionClosed : C.balancingCondition
  complexFiniteClosed : C.complexFinite
  pureDimensionClosed : C.pureDimension

def TropicalCycleClosed (C : TropicalCycle) : Prop :=
  C.balancingCondition ∧ C.complexFinite ∧ C.pureDimension

theorem tropical_cycle_closed_from_evidence (C : TropicalCycle)
    (E : TropicalCycleEvidence C) : TropicalCycleClosed C := by
  exact And.intro E.balancingConditionClosed
    (And.intro E.complexFiniteClosed E.pureDimensionClosed)

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse