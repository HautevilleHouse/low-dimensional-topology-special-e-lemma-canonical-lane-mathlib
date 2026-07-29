import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure AdmissibleClass where
  object : LowDimTopologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LowDimTopologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse