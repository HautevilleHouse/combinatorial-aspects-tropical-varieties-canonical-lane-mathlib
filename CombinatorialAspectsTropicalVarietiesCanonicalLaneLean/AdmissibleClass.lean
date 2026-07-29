import CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure AdmissibleClass where
  object : TropicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TropicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse