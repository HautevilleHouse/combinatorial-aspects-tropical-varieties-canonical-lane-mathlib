import CombinatorialAspectsTropicalVarietiesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CombinatorialAspectsTropicalVarietiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TropicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialAspectsTropicalVarietiesCanonicalLaneLean
end HautevilleHouse