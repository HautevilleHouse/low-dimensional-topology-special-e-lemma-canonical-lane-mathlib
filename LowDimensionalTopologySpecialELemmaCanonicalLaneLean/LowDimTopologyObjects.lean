import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure LowDimTopologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LowDimTopologyAdmittedObject where
  space : LowDimTopologySpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure LowDimTopologyEndgameState where
  object : LowDimTopologyAdmittedObject

def LowDimTopologyWitnessClosed (O : LowDimTopologyAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse