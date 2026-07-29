import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure SpecialELemmaPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  orientedThreeManifold : Prop
  eInvariant : Int
  specialERelation : Prop
  pinStructureExists : Prop

structure SpecialELemmaEvidence (P : SpecialELemmaPackage) where
  orientedThreeManifoldClosed : P.orientedThreeManifold
  specialERelationClosed : P.specialERelation
  pinStructureExistsClosed : P.pinStructureExists

def SpecialELemmaClosed (P : SpecialELemmaPackage) : Prop :=
  P.orientedThreeManifold ∧ P.specialERelation ∧ P.pinStructureExists

theorem special_e_lemma_closed_from_evidence (P : SpecialELemmaPackage)
    (E : SpecialELemmaEvidence P) : SpecialELemmaClosed P := by
  exact And.intro E.orientedThreeManifoldClosed
    (And.intro E.specialERelationClosed E.pinStructureExistsClosed)

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse