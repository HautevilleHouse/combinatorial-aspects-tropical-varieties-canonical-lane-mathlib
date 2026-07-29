import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

/-- The stable intersection of two tropical cycles. -/
structure StableIntersection (A B : TropicalCycle) where
  intersectionPolyhedralComplex : Type u
  support : ℝⁿ
  weight : intersectionPolyhedralComplex → ℤ
  balancingHolds : Prop
  equivalenceClass : Prop
  dimensionExpected : Prop

/-- Evidence that a StableIntersection is closed. -/
structure StableIntersectionEvidence {A B : TropicalCycle}
    (S : StableIntersection A B) where
  balancingHoldsClosed : S.balancingHolds
  equivalenceClassClosed : S.equivalenceClass
  dimensionExpectedClosed : S.dimensionExpected

def StableIntersectionClosed {A B : TropicalCycle}
    (S : StableIntersection A B) : Prop :=
  S.balancingHolds ∧ S.equivalenceClass ∧ S.dimensionExpected

theorem stable_intersection_closed_from_evidence
    {A B : TropicalCycle} (S : StableIntersection A B)
    (E : StableIntersectionEvidence S) : StableIntersectionClosed S := by
  exact And.intro E.balancingHoldsClosed
    (And.intro E.equivalenceClassClosed E.dimensionExpectedClosed)

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse