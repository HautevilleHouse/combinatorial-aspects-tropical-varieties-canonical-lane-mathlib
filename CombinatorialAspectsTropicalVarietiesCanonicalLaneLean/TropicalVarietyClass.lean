import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalVariety where
  carrier : Set (ℤ ∪ {∞})
  rank : Nat
  dimension : Nat

structure TropicalAdmittedObject where
  variety : TropicalVariety
  balanced : Prop
  pure : Prop
  conclusion : balanced ∧ pure

structure TropicalEndgameState where
  object : TropicalAdmittedObject

def TropicalWitnessClosed (O : TropicalAdmittedObject) : Prop :=
  O.conclusion

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse