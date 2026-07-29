import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalBasisConverters

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalHypersurfaceFamily (A : AdmissibleClass) where
  polynomialFamily : Type u
  degree : Nat
  tropicalHypersurfaces : Prop
  continuityUnderParameter : Prop
  familyClosed : Prop
  familyClosedTerm : familyClosed

structure TropicalHypersurfaceFamilyEvidence {A : AdmissibleClass} (F : TropicalHypersurfaceFamily A) where
  tropicalHypersurfacesClosed : F.tropicalHypersurfaces
  continuityUnderParameterClosed : F.continuityUnderParameter

def TropicalHypersurfaceFamilyClosed {A : AdmissibleClass} (F : TropicalHypersurfaceFamily A) : Prop :=
  F.tropicalHypersurfaces ∧ F.continuityUnderParameter

theorem tropical_hypersurface_family_closed_from_evidence {A : AdmissibleClass} (F : TropicalHypersurfaceFamily A) (E : TropicalHypersurfaceFamilyEvidence F) :
  TropicalHypersurfaceFamilyClosed F :=
  And.intro E.tropicalHypersurfacesClosed E.continuityUnderParameterClosed

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse