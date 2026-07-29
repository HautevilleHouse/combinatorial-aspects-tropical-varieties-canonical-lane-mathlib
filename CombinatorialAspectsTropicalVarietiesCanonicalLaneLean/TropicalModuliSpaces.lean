import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalModuliPackage where
  tropicalGrassmannianDefined : Prop
  tropicalSeveriVarietyDefined : Prop
  smoothabilityCondition : Prop
  tropicalMapEnumeration : Prop

structure TropicalModuliEvidence (M : TropicalModuliPackage) where
  tropicalGrassmannianDefinedClosed : M.tropicalGrassmannianDefined
  tropicalSeveriVarietyDefinedClosed : M.tropicalSeveriVarietyDefined
  smoothabilityConditionClosed : M.smoothabilityCondition
  tropicalMapEnumerationClosed : M.tropicalMapEnumeration

def TropicalModuliClosed (M : TropicalModuliPackage) : Prop :=
  M.tropicalGrassmannianDefined ∧ M.tropicalSeveriVarietyDefined ∧
  M.smoothabilityCondition ∧ M.tropicalMapEnumeration

theorem tropical_moduli_closed_from_evidence (M : TropicalModuliPackage)
    (E : TropicalModuliEvidence M) : TropicalModuliClosed M := by
  exact And.intro E.tropicalGrassmannianDefinedClosed
    (And.intro E.tropicalSeveriVarietyDefinedClosed
      (And.intro E.smoothabilityConditionClosed E.tropicalMapEnumerationClosed))

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
