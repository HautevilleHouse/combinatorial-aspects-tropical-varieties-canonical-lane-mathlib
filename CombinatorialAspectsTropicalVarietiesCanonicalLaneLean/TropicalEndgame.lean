import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalBergmanFan
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalBasisConverters

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedTropicalVarietiesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_tropical_varieties_endgame (A : AdmissibleClass) :
  ConstrainedTropicalVarietiesClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse