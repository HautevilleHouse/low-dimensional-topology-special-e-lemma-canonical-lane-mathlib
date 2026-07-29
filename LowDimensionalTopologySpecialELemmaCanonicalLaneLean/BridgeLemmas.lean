import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LowDimTopologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse