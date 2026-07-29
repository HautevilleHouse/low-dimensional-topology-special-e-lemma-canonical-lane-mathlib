import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

def lowDimTopologyProjection : Projection LowDimTopologyEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem low_dim_topology_projection_idempotent (x : LowDimTopologyEndgameState) :
    lowDimTopologyProjection.toFun (lowDimTopologyProjection.toFun x) = lowDimTopologyProjection.toFun x := by
  exact lowDimTopologyProjection.idempotent x

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse