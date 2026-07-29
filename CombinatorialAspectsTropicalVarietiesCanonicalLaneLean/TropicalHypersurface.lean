import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalPolynomials

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalHypersurfacePackage {S : TropicalSemiringPackage}
    (P : TropicalPolynomialPackage S) where
  carrierSet : Type u
  isTropicalHypersurface : Prop
  cornerLocus : Prop
  balancingCondition : Prop
  structureTheorem : Prop
  isTropicalHypersurfaceTerm : isTropicalHypersurface
  cornerLocusTerm : cornerLocus
  balancingConditionTerm : balancingCondition
  structureTheoremTerm : structureTheorem

structure TropicalHypersurfaceEvidence {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} (H : TropicalHypersurfacePackage P) where
  isTropicalHypersurfaceClosed : H.isTropicalHypersurface
  cornerLocusClosed : H.cornerLocus
  balancingConditionClosed : H.balancingCondition
  structureTheoremClosed : H.structureTheorem

def TropicalHypersurfaceClosed {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} (H : TropicalHypersurfacePackage P) : Prop :=
  H.isTropicalHypersurface ∧ H.cornerLocus ∧ H.balancingCondition ∧ H.structureTheorem

theorem tropical_hypersurface_closed_from_evidence {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} (H : TropicalHypersurfacePackage P)
    (E : TropicalHypersurfaceEvidence H) : TropicalHypersurfaceClosed H := by
  exact And.intro E.isTropicalHypersurfaceClosed
    (And.intro E.cornerLocusClosed
      (And.intro E.balancingConditionClosed E.structureTheoremClosed))

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse