import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalHodgePackage where
  tropicalHodgeStructure : Prop
  hardLefschetzTheorem : Prop
  hodgeRiemannRelations : Prop
  tropicalCohomologyRing : Prop

structure TropicalHodgeEvidence (H : TropicalHodgePackage) where
  tropicalHodgeStructureClosed : H.tropicalHodgeStructure
  hardLefschetzTheoremClosed : H.hardLefschetzTheorem
  hodgeRiemannRelationsClosed : H.hodgeRiemannRelations
  tropicalCohomologyRingClosed : H.tropicalCohomologyRing

def TropicalHodgeClosed (H : TropicalHodgePackage) : Prop :=
  H.tropicalHodgeStructure ∧ H.hardLefschetzTheorem ∧
  H.hodgeRiemannRelations ∧ H.tropicalCohomologyRing

theorem tropical_hodge_closed_from_evidence (H : TropicalHodgePackage)
    (E : TropicalHodgeEvidence H) : TropicalHodgeClosed H := by
  exact And.intro E.tropicalHodgeStructureClosed
    (And.intro E.hardLefschetzTheoremClosed
      (And.intro E.hodgeRiemannRelationsClosed E.tropicalCohomologyRingClosed))

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
