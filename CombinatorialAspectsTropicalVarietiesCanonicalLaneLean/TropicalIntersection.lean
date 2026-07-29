import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalCycle

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalIntersectionPackage {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} {H : TropicalHypersurfacePackage P}
    (C : TropicalCyclePackage H) where
  intersectionPairing : TropicalCyclePackage H → TropicalCyclePackage H → TropicalCyclePackage H
  stableIntersection : Prop
  bayesianFormula : Prop
  dimensionFormula : Prop
  stableIntersectionTerm : stableIntersection
  bayesianFormulaTerm : bayesianFormula
  dimensionFormulaTerm : dimensionFormula

structure TropicalIntersectionEvidence {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} {H : TropicalHypersurfacePackage P}
    {C : TropicalCyclePackage H} (I : TropicalIntersectionPackage C) where
  stableIntersectionClosed : I.stableIntersection
  bayesianFormulaClosed : I.bayesianFormula
  dimensionFormulaClosed : I.dimensionFormula

def TropicalIntersectionClosed {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} {H : TropicalHypersurfacePackage P}
    {C : TropicalCyclePackage H} (I : TropicalIntersectionPackage C) : Prop :=
  I.stableIntersection ∧ I.bayesianFormula ∧ I.dimensionFormula

theorem tropical_intersection_closed_from_evidence {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} {H : TropicalHypersurfacePackage P}
    {C : TropicalCyclePackage H} (I : TropicalIntersectionPackage C)
    (E : TropicalIntersectionEvidence I) : TropicalIntersectionClosed I := by
  exact And.intro E.stableIntersectionClosed
    (And.intro E.bayesianFormulaClosed E.dimensionFormulaClosed)

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse