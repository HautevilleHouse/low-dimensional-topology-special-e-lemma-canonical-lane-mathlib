import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure JSJDecompositionPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  irreducible : Prop
  torusDecomposition : Prop
  characteristicSubmanifold : Prop
  seifertFiberedPieces : Prop
  hyperbolicPieces : Prop

structure JSJDecompositionEvidence (J : JSJDecompositionPackage) where
  irreducibleClosed : J.irreducible
  torusDecompositionClosed : J.torusDecomposition
  characteristicSubmanifoldClosed : J.characteristicSubmanifold
  seifertFiberedPiecesClosed : J.seifertFiberedPieces
  hyperbolicPiecesClosed : J.hyperbolicPieces

def JSJDecompositionClosed (J : JSJDecompositionPackage) : Prop :=
  J.irreducible ∧ J.torusDecomposition ∧ J.characteristicSubmanifold ∧
  J.seifertFiberedPieces ∧ J.hyperbolicPieces

theorem jsj_decomposition_closed_from_evidence
    (J : JSJDecompositionPackage) (E : JSJDecompositionEvidence J) :
    JSJDecompositionClosed J := by
  exact And.intro E.irreducibleClosed
    (And.intro E.torusDecompositionClosed
      (And.intro E.characteristicSubmanifoldClosed
        (And.intro E.seifertFiberedPiecesClosed E.hyperbolicPiecesClosed)))

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse