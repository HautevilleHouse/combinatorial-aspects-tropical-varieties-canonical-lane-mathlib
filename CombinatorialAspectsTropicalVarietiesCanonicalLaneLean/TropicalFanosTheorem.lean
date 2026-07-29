import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

structure TropicalFanoPackage where
  trofanicityCriteria : Prop
  fanoVarietyTropicalized : Prop
  combinatorialClassification : Prop
  tropicalDivisorsClassified : Prop

structure TropicalFanoEvidence (F : TropicalFanoPackage) where
  trofanicityCriteriaClosed : F.trofanicityCriteria
  fanoVarietyTropicalizedClosed : F.fanoVarietyTropicalized
  combinatorialClassificationClosed : F.combinatorialClassification
  tropicalDivisorsClassifiedClosed : F.tropicalDivisorsClassified

def TropicalFanoClosed (F : TropicalFanoPackage) : Prop :=
  F.trofanicityCriteria ∧ F.fanoVarietyTropicalized ∧
  F.combinatorialClassification ∧ F.tropicalDivisorsClassified

theorem tropical_fano_closed_from_evidence (F : TropicalFanoPackage)
    (E : TropicalFanoEvidence F) : TropicalFanoClosed F := by
  exact And.intro E.trofanicityCriteriaClosed
    (And.intro E.fanoVarietyTropicalizedClosed
      (And.intro E.combinatorialClassificationClosed E.tropicalDivisorsClassifiedClosed))

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse
