import LowDimensionalTopologySpecialELemmaCanonicalLaneLean.SpecialEDecomposition

/-!
# Special E Endpoint Package
-/

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure SpecialEEndpointPackage {D : SpecialEDecompositionPackage} (Z : SpecialEDecompositionPackage) where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  simplyConnectedClosedThreeManifold : Prop
  sphereEndpoint : ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere targetManifold 3
  endpointMatchesSpecialEStatement : Prop

structure SpecialEEndpointEvidence {D : SpecialEDecompositionPackage}
    {Z : SpecialEDecompositionPackage} (Epkg : SpecialEEndpointPackage Z) where
  simplyConnectedClosedThreeManifoldClosed : Epkg.simplyConnectedClosedThreeManifold
  endpointMatchesSpecialEStatementClosed : Epkg.endpointMatchesSpecialEStatement

def SpecialEEndpointClosed {D : SpecialEDecompositionPackage}
    {Z : SpecialEDecompositionPackage} (Epkg : SpecialEEndpointPackage Z) : Prop :=
  Epkg.simplyConnectedClosedThreeManifold ∧
  Epkg.endpointMatchesSpecialEStatement

theorem special_e_endpoint_closed_from_evidence
    {D : SpecialEDecompositionPackage} {Z : SpecialEDecompositionPackage}
    (Epkg : SpecialEEndpointPackage Z) (E : SpecialEEndpointEvidence Epkg) :
    SpecialEEndpointClosed Epkg := by
  exact And.intro E.simplyConnectedClosedThreeManifoldClosed
    E.endpointMatchesSpecialEStatementClosed

theorem special_e_endpoint_supplies_mathlib_statement
    {D : SpecialEDecompositionPackage} {Z : SpecialEDecompositionPackage}
    (Epkg : SpecialEEndpointPackage Z) :
    @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere
      Epkg.targetManifold Epkg.targetTopology 3 :=
  Epkg.sphereEndpoint

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse
