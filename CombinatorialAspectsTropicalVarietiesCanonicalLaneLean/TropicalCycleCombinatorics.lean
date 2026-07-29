import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalHypersurfaceFamily

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalCycle (A : AdmissibleClass) where
  support : Type u
  multiplicity : A.object.carrier → ℕ
  balancingCondition : Prop
  cycleClosed : Prop
  cycleClosedTerm : cycleClosed

structure TropicalCycleEvidence {A : AdmissibleClass} (C : TropicalCycle A) where
  balancingConditionClosed : C.balancingCondition

def TropicalCycleClosed {A : AdmissibleClass} (C : TropicalCycle A) : Prop :=
  C.balancingCondition

theorem tropical_cycle_closed_from_evidence {A : AdmissibleClass} (C : TropicalCycle A) (E : TropicalCycleEvidence C) :
  TropicalCycleClosed C :=
  E.balancingConditionClosed

structure TropicalCycleFamily {A : AdmissibleClass} (F : TropicalHypersurfaceFamily A) where
  cycles : A.object.carrier → TropicalCycle A
  compatibilityWithFamily : Prop
  compatibilityTerm : compatibilityWithFamily

def TropicalCycleFamilyClosed {A : AdmissibleClass} {F : TropicalHypersurfaceFamily A} (CF : TropicalCycleFamily F) : Prop :=
  CF.compatibilityWithFamily

theorem tropical_cycle_family_closed {A : AdmissibleClass} {F : TropicalHypersurfaceFamily A} (CF : TropicalCycleFamily F) :
  TropicalCycleFamilyClosed CF :=
  CF.compatibilityTerm

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse