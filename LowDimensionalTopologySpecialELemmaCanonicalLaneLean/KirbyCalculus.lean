import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure KirbyCalculusPackage where
  framedLinkDiagram : Prop
  handleDecomposition : Prop
  kirbyMoves : Prop
  kirbyTheorem : Prop
  surgeryDescription : Prop
  fourManifoldPresentation : Prop

structure KirbyCalculusEvidence (K : KirbyCalculusPackage) where
  framedLinkDiagramClosed : K.framedLinkDiagram
  handleDecompositionClosed : K.handleDecomposition
  kirbyMovesClosed : K.kirbyMoves
  kirbyTheoremClosed : K.kirbyTheorem
  surgeryDescriptionClosed : K.surgeryDescription
  fourManifoldPresentationClosed : K.fourManifoldPresentation

def KirbyCalculusClosed (K : KirbyCalculusPackage) : Prop :=
  K.framedLinkDiagram ∧ K.handleDecomposition ∧ K.kirbyMoves ∧
  K.kirbyTheorem ∧ K.surgeryDescription ∧ K.fourManifoldPresentation

theorem kirby_calculus_closed_from_evidence
    (K : KirbyCalculusPackage) (E : KirbyCalculusEvidence K) :
    KirbyCalculusClosed K := by
  refine And.intro E.framedLinkDiagramClosed
    (And.intro E.handleDecompositionClosed
      (And.intro E.kirbyMovesClosed
        (And.intro E.kirbyTheoremClosed
          (And.intro E.surgeryDescriptionClosed E.fourManifoldPresentationClosed))))

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse