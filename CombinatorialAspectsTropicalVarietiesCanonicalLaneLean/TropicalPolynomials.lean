import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.TropicalSemiring

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalPolynomialPackage (S : TropicalSemiringPackage) where
  variableSet : Type u
  coefficientSet : Type v
  termType : Type w
  polynomialSet : Type x
  evaluationMap : polynomialSet → (variableSet → S.carrier) → S.carrier
  piecewiseLinear : Prop
  convexity : Prop
  piecewiseLinearTerm : piecewiseLinear
  convexityTerm : convexity

structure TropicalPolynomialEvidence {S : TropicalSemiringPackage}
    (P : TropicalPolynomialPackage S) where
  piecewiseLinearClosed : P.piecewiseLinear
  convexityClosed : P.convexity

def TropicalPolynomialClosed {S : TropicalSemiringPackage}
    (P : TropicalPolynomialPackage S) : Prop :=
  P.piecewiseLinear ∧ P.convexity

theorem tropical_polynomial_closed_from_evidence {S : TropicalSemiringPackage}
    (P : TropicalPolynomialPackage S) (E : TropicalPolynomialEvidence P) :
    TropicalPolynomialClosed P := by
  exact And.intro E.piecewiseLinearClosed E.convexityClosed

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse