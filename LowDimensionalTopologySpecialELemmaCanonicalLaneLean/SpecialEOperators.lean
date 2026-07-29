import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure SpecialEOperatorPackage where
  eInvariantDefined : Prop
  mod2EInvariantConsistent : Prop
  rokhlinInvariantLinked : Prop
  specialERelationDerived : Prop

structure SpecialEOperatorEvidence (O : SpecialEOperatorPackage) where
  eInvariantDefinedClosed : O.eInvariantDefined
  mod2EInvariantConsistentClosed : O.mod2EInvariantConsistent
  rokhlinInvariantLinkedClosed : O.rokhlinInvariantLinked
  specialERelationDerivedClosed : O.specialERelationDerived

def SpecialEOperatorClosed (O : SpecialEOperatorPackage) : Prop :=
  O.eInvariantDefined ∧ O.mod2EInvariantConsistent ∧
  O.rokhlinInvariantLinked ∧ O.specialERelationDerived

theorem special_e_operator_closed_from_evidence (O : SpecialEOperatorPackage)
    (E : SpecialEOperatorEvidence O) : SpecialEOperatorClosed O := by
  exact And.intro E.eInvariantDefinedClosed
    (And.intro E.mod2EInvariantConsistentClosed
      (And.intro E.rokhlinInvariantLinkedClosed E.specialERelationDerivedClosed))

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse