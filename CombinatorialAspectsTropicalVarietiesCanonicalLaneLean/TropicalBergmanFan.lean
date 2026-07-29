import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalStableIntersection

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalBergmanFan (A : AdmissibleClass) where
  matroid : Type u
  fanStructure : Prop
  matroidClosed : Prop
  fanClosed : Prop
  matroidClosedTerm : matroidClosed
  fanClosedTerm : fanClosed
  evidence : matroidClosed ∧ fanClosed

def TropicalBergmanFanClosed (B : TropicalBergmanFan A) : Prop :=
  B.matroidClosed ∧ B.fanClosed

theorem tropical_bergman_fan_closed (B : TropicalBergmanFan A) :
  TropicalBergmanFanClosed B :=
  B.evidence

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse