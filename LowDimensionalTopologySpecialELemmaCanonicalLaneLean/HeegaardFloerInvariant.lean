import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure HeegaardFloerPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  heegaardDiagram : Prop
  chainComplex : Prop
  homologyGroups : Prop
  hfHatPackage : Prop
  hfPlusPackage : Prop
  hfMinusPackage : Prop
  hfInfPackage : Prop
  cobordismMaps : Prop

structure HeegaardFloerEvidence (H : HeegaardFloerPackage) where
  heegaardDiagramClosed : H.heegaardDiagram
  chainComplexClosed : H.chainComplex
  homologyGroupsClosed : H.homologyGroups
  hfHatPackageClosed : H.hfHatPackage
  hfPlusPackageClosed : H.hfPlusPackage
  hfMinusPackageClosed : H.hfMinusPackage
  hfInfPackageClosed : H.hfInfPackage
  cobordismMapsClosed : H.cobordismMaps

def HeegaardFloerClosed (H : HeegaardFloerPackage) : Prop :=
  H.heegaardDiagram ∧ H.chainComplex ∧ H.homologyGroups ∧
  H.hfHatPackage ∧ H.hfPlusPackage ∧ H.hfMinusPackage ∧
  H.hfInfPackage ∧ H.cobordismMaps

theorem heegaard_floer_closed_from_evidence
    (H : HeegaardFloerPackage) (E : HeegaardFloerEvidence H) :
    HeegaardFloerClosed H := by
  refine And.intro E.heegaardDiagramClosed
    (And.intro E.chainComplexClosed
      (And.intro E.homologyGroupsClosed
        (And.intro E.hfHatPackageClosed
          (And.intro E.hfPlusPackageClosed
            (And.intro E.hfMinusPackageClosed
              (And.intro E.hfInfPackageClosed E.cobordismMapsClosed))))))

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse