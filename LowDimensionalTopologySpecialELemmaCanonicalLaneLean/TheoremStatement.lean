import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

open scoped Topology

structure AdmittedObject where
  space : Type
  topology : TopologicalSpace space
  specialECondition : Prop
  conclusion : specialECondition

def WitnessClosed (O : AdmittedObject) : Prop :=
  O.specialECondition

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse
