import CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TropicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TropicalAdmittedObject where
  space : TropicalSpace
  tropicalVariety : Prop
  balancedPolyhedron : Prop
  richardsonModel : Type
  richardsonTopology : TopologicalSpace richardsonModel
  homeomorphicToRichardson : Prop
  conclusion : homeomorphicToRichardson

structure TropicalEndgameState where
  object : TropicalAdmittedObject

def TropicalWitnessClosed (O : TropicalAdmittedObject) : Prop :=
  O.homeomorphicToRichardson

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse