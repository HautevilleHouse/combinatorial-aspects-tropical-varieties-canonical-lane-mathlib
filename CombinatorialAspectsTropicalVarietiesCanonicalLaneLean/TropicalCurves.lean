import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

/-- A tropical curve is a finite graph with edge lengths in ℝ ∪ {∞}. -/
structure TropicalCurve where
  vertices : Type u
  edges : Type v
  incidence : edges → vertices × vertices
  length : edges → ℝ → Prop
  finiteValence : Prop
  underlyingGraphFinite : Prop
  lengthPositive : edges → Prop

/-- A tropical rational function on a tropical curve. -/
structure TropicalRationalFunction where
  curve : TropicalCurve
  piecewiseLinear : Prop
  slopeInteger : Prop
  balancedAtVertices : Prop

/-- The divisor associated to a tropical rational function. -/
def divisorOfFunction (f : TropicalRationalFunction) : Prop :=
  f.piecewiseLinear ∧ f.slopeInteger ∧ f.balancedAtVertices

/-- A divisor on a tropical curve. -/
structure DivOnCurve where
  curve : TropicalCurve
  support : Type w
  coefficient : support → ℤ
  finiteSupport : Finset (support)
  degree : ℤ := ∑ s in finiteSupport, coefficient s

/-- Linear equivalence of divisors: D ~ D' iff D - D' is principal. -/
def linearEquiv (D D' : DivOnCurve) : Prop :=
  ∃ (f : TropicalRationalFunction), D.curve = f.curve ∧ D'.curve = f.curve ∧
    (divisorOfFunction f) ∧ (D.degree = D'.degree)

/-- A tropical curve together with a divisor of degree d. -/
structure AdmittedTropicalObject where
  curve : TropicalCurve
  divisor : DivOnCurve
  divisorDegree : divisor.degree = 0

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse