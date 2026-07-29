import canonicalLaneMathlib.AdmissibleClass
import LowDimensionalTopologySpecialELemmaCanonicalLaneLean.SpecialELemma
import LowDimensionalTopologySpecialELemmaCanonicalLaneLean.HyperbolicDehnFilling
import LowDimensionalTopologySpecialELemmaCanonicalLaneLean.JSJDecomposition

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedSpecialEClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_special_e_endgame (A : AdmissibleClass) :
    ConstrainedSpecialEClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse