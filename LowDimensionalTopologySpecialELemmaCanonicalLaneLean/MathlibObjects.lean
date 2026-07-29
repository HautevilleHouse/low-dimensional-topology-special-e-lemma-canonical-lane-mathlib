import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.Core
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SpecialESpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SpecialEAdmittedObject where
  space : SpecialESpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure SpecialEEndgameState where
  object : SpecialEAdmittedObject

def SpecialEWitnessClosed (O : SpecialEAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse
