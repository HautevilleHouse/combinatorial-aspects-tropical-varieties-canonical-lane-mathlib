import CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalStableIntersection

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalDualComplexPackage (V : TropicalVariety) where
  dualComplex : Type u
  cells : List (dualComplex)
  incidenceRelations : Prop
  eulerCharacteristicComputed : Prop

structure TropicalDualComplexEvidence (V : TropicalVariety) (D : TropicalDualComplexPackage V) where
  incidenceClosed : D.incidenceRelations
  eulerClosed : D.eulerCharacteristicComputed

def TropicalDualComplexClosed (V : TropicalVariety) (D : TropicalDualComplexPackage V) : Prop :=
  D.incidenceRelations ∧ D.eulerCharacteristicComputed

theorem tropical_dual_complex_closed_from_evidence (V : TropicalVariety) 
    (D : TropicalDualComplexPackage V) (E : TropicalDualComplexEvidence V D) :
    TropicalDualComplexClosed V D := by
  exact And.intro E.incidenceClosed E.eulerClosed

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse