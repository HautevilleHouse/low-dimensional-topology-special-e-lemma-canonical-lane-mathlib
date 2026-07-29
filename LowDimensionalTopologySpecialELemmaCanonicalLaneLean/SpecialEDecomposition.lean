import LowDimensionalTopologySpecialELemmaCanonicalLaneLean.MathlibObjects

/-!
# Special E Decomposition Package
-/

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure SpecialEDecompositionPackage where
  primeDecompositionValid : Prop
  JSJDecompositionValid : Prop
  torusDecompositionValid : Prop
  essentialSPhereCut : Prop

structure SpecialEDecompositionEvidence (D : SpecialEDecompositionPackage) where
  primeDecompositionValidClosed : D.primeDecompositionValid
  JSJDecompositionValidClosed : D.JSJDecompositionValid
  torusDecompositionValidClosed : D.torusDecompositionValid
  essentialSPhereCutClosed : D.essentialSPhereCut

def SpecialEDecompositionClosed (D : SpecialEDecompositionPackage) : Prop :=
  D.primeDecompositionValid ∧ D.JSJDecompositionValid ∧
  D.torusDecompositionValid ∧ D.essentialSPhereCut

theorem special_e_decomposition_closed_from_evidence
    (D : SpecialEDecompositionPackage) (E : SpecialEDecompositionEvidence D) :
    SpecialEDecompositionClosed D := by
  exact And.intro E.primeDecompositionValidClosed
    (And.intro E.JSJDecompositionValidClosed
      (And.intro E.torusDecompositionValidClosed E.essentialSPhereCutClosed))

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse
