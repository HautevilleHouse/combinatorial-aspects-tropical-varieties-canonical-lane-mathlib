import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalSemiringPackage where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  addNeutral : carrier
  mulNeutral : carrier
  addIdempotent : Prop
  mulAssociative : Prop
  addCommutative : Prop
  mulDistributive : Prop
  addIdempotentTerm : addIdempotent
  mulAssociativeTerm : mulAssociative
  addCommutativeTerm : addCommutative
  mulDistributiveTerm : mulDistributive

structure TropicalSemiringEvidence (S : TropicalSemiringPackage) where
  addIdempotentClosed : S.addIdempotent
  mulAssociativeClosed : S.mulAssociative
  addCommutativeClosed : S.addCommutative
  mulDistributiveClosed : S.mulDistributive

def TropicalSemiringClosed (S : TropicalSemiringPackage) : Prop :=
  S.addIdempotent ∧ S.mulAssociative ∧ S.addCommutative ∧ S.mulDistributive

theorem tropical_semiring_closed_from_evidence (S : TropicalSemiringPackage)
    (E : TropicalSemiringEvidence S) : TropicalSemiringClosed S := by
  exact And.intro E.addIdempotentClosed
    (And.intro E.mulAssociativeClosed
      (And.intro E.addCommutativeClosed E.mulDistributiveClosed))

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse