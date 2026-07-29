import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure SurfaceMappingClassGroupPackage where
  surfaceGenus : ℕ
  mappingClassGroupType : Type u
  pureMappingClassGroupType : Type v
  actionOnHomology : Prop
  torsionSubgroup : Prop
  NielsenThurstonClassification : Prop

structure SurfaceMappingClassGroupEvidence (S : SurfaceMappingClassGroupPackage) where
  actionOnHomologyClosed : S.actionOnHomology
  torsionSubgroupClosed : S.torsionSubgroup
  nielsenThurstonClassificationClosed : S.NielsenThurstonClassification

def SurfaceMappingClassGroupClosed (S : SurfaceMappingClassGroupPackage) : Prop :=
  S.actionOnHomology ∧ S.torsionSubgroup ∧ S.NielsenThurstonClassification

theorem surface_mapping_class_group_closed_from_evidence
    (S : SurfaceMappingClassGroupPackage) (E : SurfaceMappingClassGroupEvidence S) :
    SurfaceMappingClassGroupClosed S := by
  exact And.intro E.actionOnHomologyClosed
    (And.intro E.torsionSubgroupClosed E.nielsenThurstonClassificationClosed)

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse