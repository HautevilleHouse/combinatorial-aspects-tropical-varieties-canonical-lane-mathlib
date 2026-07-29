import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalEnumerativePackage where
  tropicalGromovWittenInvariants : Prop
  tropicalSeveriDegreesComputed : Prop
  correspondenceTheorem : Prop
  descendantInvariantsDefined : Prop

structure TropicalEnumerativeEvidence (E : TropicalEnumerativePackage) where
  tropicalGromovWittenInvariantsClosed : E.tropicalGromovWittenInvariants
  tropicalSeveriDegreesComputedClosed : E.tropicalSeveriDegreesComputed
  correspondenceTheoremClosed : E.correspondenceTheorem
  descendantInvariantsDefinedClosed : E.descendantInvariantsDefined

def TropicalEnumerativeClosed (E : TropicalEnumerativePackage) : Prop :=
  E.tropicalGromovWittenInvariants ∧ E.tropicalSeveriDegreesComputed ∧
  E.correspondenceTheorem ∧ E.descendantInvariantsDefined

theorem tropical_enumerative_closed_from_evidence (E : TropicalEnumerativePackage)
    (Ev : TropicalEnumerativeEvidence E) : TropicalEnumerativeClosed E := by
  exact And.intro Ev.tropicalGromovWittenInvariantsClosed
    (And.intro Ev.tropicalSeveriDegreesComputedClosed
      (And.intro Ev.correspondenceTheoremClosed Ev.descendantInvariantsDefinedClosed))

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
