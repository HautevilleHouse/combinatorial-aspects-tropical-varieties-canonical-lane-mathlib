import CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

def ConstrainedTropicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tropical_endgame (A : AdmissibleClass) :
    ConstrainedTropicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse