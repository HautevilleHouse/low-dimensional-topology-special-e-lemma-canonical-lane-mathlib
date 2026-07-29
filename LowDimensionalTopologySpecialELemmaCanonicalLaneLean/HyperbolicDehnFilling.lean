import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure HyperbolicDehnFillingPackage where
  cuspTorii : Type u
  fillingSlopes : List ℤ
  hyperbolicMetric : Prop
  volumeFinite : Prop

structure HyperbolicDehnFillingEvidence (H : HyperbolicDehnFillingPackage) where
  hyperbolicMetricClosed : H.hyperbolicMetric
  volumeFiniteClosed : H.volumeFinite

def HyperbolicDehnFillingClosed (H : HyperbolicDehnFillingPackage) : Prop :=
  H.hyperbolicMetric ∧ H.volumeFinite

theorem hyperbolic_dehn_filling_closed_from_evidence (H : HyperbolicDehnFillingPackage)
    (E : HyperbolicDehnFillingEvidence H) : HyperbolicDehnFillingClosed H :=
  And.intro E.hyperbolicMetricClosed E.volumeFiniteClosed

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse