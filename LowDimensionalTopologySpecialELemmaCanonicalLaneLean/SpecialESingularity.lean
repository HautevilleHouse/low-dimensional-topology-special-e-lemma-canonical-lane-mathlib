import LowDimensionalTopologySpecialELemmaCanonicalLaneLean.SpecialEDecomposition

/-!
# Special E Singularity Models Package
-/

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure SpecialESingularityModelsPackage where
  triangulationExists : Prop
  normalSurfaceTheory : Prop
  singularSPhereHandling : Prop
  compressionBody : Prop

structure SpecialESingularityModelsEvidence (Q : SpecialESingularityModelsPackage) where
  triangulationExistsClosed : Q.triangulationExists
  normalSurfaceTheoryClosed : Q.normalSurfaceTheory
  singularSPhereHandlingClosed : Q.singularSPhereHandling
  compressionBodyClosed : Q.compressionBody

def SpecialESingularityModelsClosed (Q : SpecialESingularityModelsPackage) : Prop :=
  Q.triangulationExists ∧ Q.normalSurfaceTheory ∧
  Q.singularSPhereHandling ∧ Q.compressionBody

theorem special_e_singularity_models_closed_from_evidence
    (Q : SpecialESingularityModelsPackage) (E : SpecialESingularityModelsEvidence Q) :
    SpecialESingularityModelsClosed Q := by
  exact And.intro E.triangulationExistsClosed
    (And.intro E.normalSurfaceTheoryClosed
      (And.intro E.singularSPhereHandlingClosed E.compressionBodyClosed))

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse
