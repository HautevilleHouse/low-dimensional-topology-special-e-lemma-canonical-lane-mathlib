import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure SpecialEAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  threeManifold : Prop
  orientation : Prop
  eInvariant : Int
  specialERelation : Prop
  conclusion : specialERelation

def SpecialEWitnessClosed (O : SpecialEAdmittedObject) : Prop :=
  O.specialERelation

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse