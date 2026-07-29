import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalIntersectionPackage where
  stableIntersectionDefined : Prop
  intersectionProductWellDefined : Prop
  tropicalBezoutTheorem : Prop
  excessIntersectionFormula : Prop

structure TropicalIntersectionEvidence (I : TropicalIntersectionPackage) where
  stableIntersectionDefinedClosed : I.stableIntersectionDefined
  intersectionProductWellDefinedClosed : I.intersectionProductWellDefined
  tropicalBezoutTheoremClosed : I.tropicalBezoutTheorem
  excessIntersectionFormulaClosed : I.excessIntersectionFormula

def TropicalIntersectionClosed (I : TropicalIntersectionPackage) : Prop :=
  I.stableIntersectionDefined ∧ I.intersectionProductWellDefined ∧
  I.tropicalBezoutTheorem ∧ I.excessIntersectionFormula

theorem tropical_intersection_closed_from_evidence (I : TropicalIntersectionPackage)
    (E : TropicalIntersectionEvidence I) : TropicalIntersectionClosed I := by
  exact And.intro E.stableIntersectionDefinedClosed
    (And.intro E.intersectionProductWellDefinedClosed
      (And.intro E.tropicalBezoutTheoremClosed E.excessIntersectionFormulaClosed))

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
