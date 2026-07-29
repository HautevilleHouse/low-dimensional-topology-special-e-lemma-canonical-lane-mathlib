import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure PinStructurePackage where
  spinStructureExists : Prop
  pinStructureExists : Prop
  liftToPin : Prop
  eInvariantFromPin : Prop

structure PinStructureEvidence (P : PinStructurePackage) where
  spinStructureExistsClosed : P.spinStructureExists
  pinStructureExistsClosed : P.pinStructureExists
  liftToPinClosed : P.liftToPin
  eInvariantFromPinClosed : P.eInvariantFromPin

def PinStructureClosed (P : PinStructurePackage) : Prop :=
  P.spinStructureExists ∧ P.pinStructureExists ∧
  P.liftToPin ∧ P.eInvariantFromPin

theorem pin_structure_closed_from_evidence (P : PinStructurePackage)
    (E : PinStructureEvidence P) : PinStructureClosed P := by
  exact And.intro E.spinStructureExistsClosed
    (And.intro E.pinStructureExistsClosed
      (And.intro E.liftToPinClosed E.eInvariantFromPinClosed))

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse