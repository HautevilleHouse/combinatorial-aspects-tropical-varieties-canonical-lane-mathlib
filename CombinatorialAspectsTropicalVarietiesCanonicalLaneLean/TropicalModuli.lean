import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalCycle

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalModuliPackage {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} {H : TropicalHypersurfacePackage P}
    (C : TropicalCyclePackage H) where
  moduliSpace : Type u
  parameterization : Type v
  forgetfulMap : moduliSpace → (S.carrier : Type)
  universalFamily : Prop
  completeness : Prop
  universalFamilyTerm : universalFamily
  completenessTerm : completeness

structure TropicalModuliEvidence {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} {H : TropicalHypersurfacePackage P}
    {C : TropicalCyclePackage H} (M : TropicalModuliPackage C) where
  universalFamilyClosed : M.universalFamily
  completenessClosed : M.completeness

def TropicalModuliClosed {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} {H : TropicalHypersurfacePackage P}
    {C : TropicalCyclePackage H} (M : TropicalModuliPackage C) : Prop :=
  M.universalFamily ∧ M.completeness

theorem tropical_moduli_closed_from_evidence {S : TropicalSemiringPackage}
    {P : TropicalPolynomialPackage S} {H : TropicalHypersurfacePackage P}
    {C : TropicalCyclePackage H} (M : TropicalModuliPackage C)
    (E : TropicalModuliEvidence M) : TropicalModuliClosed M := by
  exact And.intro E.universalFamilyClosed E.completenessClosed

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse