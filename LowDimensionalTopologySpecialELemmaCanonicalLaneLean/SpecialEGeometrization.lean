import LowDimensionalTopologySpecialELemmaCanonicalLaneLean.SpecialESingularity

/-!
# Special E Geometrization Package
-/

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure SpecialEGeometrizationPackage where
  geometricDecompositionValid : Prop
  hyperbolicPieceIdentified : Prop
  SeifertFiberedPieceIdentified : Prop
  torusPieceIdentified : Prop
  sphericalPieceIdentified : Prop

structure SpecialEGeometrizationEvidence (G : SpecialEGeometrizationPackage) where
  geometricDecompositionValidClosed : G.geometricDecompositionValid
  hyperbolicPieceIdentifiedClosed : G.hyperbolicPieceIdentified
  SeifertFiberedPieceIdentifiedClosed : G.SeifertFiberedPieceIdentified
  torusPieceIdentifiedClosed : G.torusPieceIdentified
  sphericalPieceIdentifiedClosed : G.sphericalPieceIdentified

def SpecialEGeometrizationClosed (G : SpecialEGeometrizationPackage) : Prop :=
  G.geometricDecompositionValid ∧ G.hyperbolicPieceIdentified ∧
  G.SeifertFiberedPieceIdentified ∧ G.torusPieceIdentified ∧
  G.sphericalPieceIdentified

theorem special_e_geometrization_closed_from_evidence
    (G : SpecialEGeometrizationPackage) (E : SpecialEGeometrizationEvidence G) :
    SpecialEGeometrizationClosed G := by
  exact And.intro E.geometricDecompositionValidClosed
    (And.intro E.hyperbolicPieceIdentifiedClosed
      (And.intro E.SeifertFiberedPieceIdentifiedClosed
        (And.intro E.torusPieceIdentifiedClosed E.sphericalPieceIdentifiedClosed)))

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse
