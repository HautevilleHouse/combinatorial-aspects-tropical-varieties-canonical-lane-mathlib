import canonicalLaneMathlib.AdmissibleClass

/-!
# Combinatorial Package for Tropical Varieties
-/

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalVariety where
  carrier : Type u
  topology : TopologicalSpace carrier
  tropicalStructure : Prop

def tropicalWitnessClosed (V : TropicalVariety) : Prop := V.tropicalStructure

structure AdmissibleClass where
  object : TropicalVariety
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  tropicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse