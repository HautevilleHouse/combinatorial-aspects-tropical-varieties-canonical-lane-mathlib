import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalVarietiesCombinatorialPackage

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalBasisConverter (A : AdmissibleClass) where
  basisSet : Type u
  basisCardinality : Nat
  basisClosed : Prop
  basisClosedTerm : basisClosed

def bridgeClosed (A : AdmissibleClass) : Prop :=
  tropicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.tropicalStructure

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse