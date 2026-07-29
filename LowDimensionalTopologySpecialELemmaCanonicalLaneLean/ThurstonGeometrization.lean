import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure ThurstonGeometrizationPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  closedOrientableIrreducible : Prop
  geometricDecomposition : Prop
  eightGeometriesClassified : Prop
  hyperbolicModel : Prop
  sphericalModel : Prop
  productModel : Prop
  seifertModel : Prop
  nilpotentModel : Prop
  solvableModel : Prop

structure ThurstonGeometrizationEvidence (T : ThurstonGeometrizationPackage) where
  closedOrientableIrreducibleClosed : T.closedOrientableIrreducible
  geometricDecompositionClosed : T.geometricDecomposition
  eightGeometriesClassifiedClosed : T.eightGeometriesClassified
  hyperbolicModelClosed : T.hyperbolicModel
  sphericalModelClosed : T.sphericalModel
  productModelClosed : T.productModel
  seifertModelClosed : T.seifertModel
  nilpotentModelClosed : T.nilpotentModel
  solvableModelClosed : T.solvableModel

def ThurstonGeometrizationClosed (T : ThurstonGeometrizationPackage) : Prop :=
  T.closedOrientableIrreducible ∧ T.geometricDecomposition ∧
  T.eightGeometriesClassified ∧ T.hyperbolicModel ∧ T.sphericalModel ∧
  T.productModel ∧ T.seifertModel ∧ T.nilpotentModel ∧ T.solvableModel

theorem thurston_geometrization_closed_from_evidence
    (T : ThurstonGeometrizationPackage) (E : ThurstonGeometrizationEvidence T) :
    ThurstonGeometrizationClosed T := by
  refine And.intro E.closedOrientableIrreducibleClosed
    (And.intro E.geometricDecompositionClosed
      (And.intro E.eightGeometriesClassifiedClosed
        (And.intro E.hyperbolicModelClosed
          (And.intro E.sphericalModelClosed
            (And.intro E.productModelClosed
              (And.intro E.seifertModelClosed
                (And.intro E.nilpotentModelClosed E.solvableModelClosed)))))))

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse