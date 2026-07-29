import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure JSJDecompositionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  tori : List (Type u)
  seifertPieces : List (Type u)
  piecewiseHyperbolic : Prop
  gluingMaps : Prop

structure JSJDecompositionEvidence (J : JSJDecompositionPackage) where
  piecewiseHyperbolicClosed : J.piecewiseHyperbolic
  gluingMapsClosed : J.gluingMaps

def JSJDecompositionClosed (J : JSJDecompositionPackage) : Prop :=
  J.piecewiseHyperbolic ∧ J.gluingMaps

theorem jsj_decomposition_closed_from_evidence (J : JSJDecompositionPackage)
    (E : JSJDecompositionEvidence J) : JSJDecompositionClosed J :=
  And.intro E.piecewiseHyperbolicClosed E.gluingMapsClosed

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse