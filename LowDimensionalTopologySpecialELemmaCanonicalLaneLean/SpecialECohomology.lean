import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure SpecialECohomologyPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  specialEGroup : Type u
  cohomologyRing : Type u
  specialEStructureDefined : Prop
  vanishingCondition : Prop
  surgeryInvariance : Prop

structure SpecialECohomologyEvidence (S : SpecialECohomologyPackage) where
  specialEStructureDefinedClosed : S.specialEStructureDefined
  vanishingConditionClosed : S.vanishingCondition
  surgeryInvarianceClosed : S.surgeryInvariance

def SpecialECohomologyClosed (S : SpecialECohomologyPackage) : Prop :=
  S.specialEStructureDefined ∧ S.vanishingCondition ∧ S.surgeryInvariance

theorem special_e_cohomology_closed_from_evidence
    (S : SpecialECohomologyPackage) (E : SpecialECohomologyEvidence S) :
    SpecialECohomologyClosed S := by
  exact And.intro E.specialEStructureDefinedClosed
    (And.intro E.vanishingConditionClosed E.surgeryInvarianceClosed)

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse