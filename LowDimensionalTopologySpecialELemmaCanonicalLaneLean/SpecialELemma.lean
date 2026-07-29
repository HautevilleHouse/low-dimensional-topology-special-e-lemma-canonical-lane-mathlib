import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowDimensionalTopologySpecialELemmaCanonicalLaneLean

structure SpecialEConditions where
  threeManifold : Type u
  topology : TopologicalSpace threeManifold
  irreducible : Prop
  atoroidal : Prop
  acylindrical : Prop
  boundaryIncompressible : Prop

structure SpecialELemmaEvidence (C : SpecialEConditions) where
  irreducibleClosed : C.irreducible
  atoroidalClosed : C.atoroidal
  acylindricalClosed : C.acylindrical
  boundaryIncompressibleClosed : C.boundaryIncompressible

def SpecialEClosed (C : SpecialEConditions) : Prop :=
  C.irreducible ∧ C.atoroidal ∧ C.acylindrical ∧ C.boundaryIncompressible

theorem special_e_closed_from_evidence (C : SpecialEConditions)
    (E : SpecialELemmaEvidence C) : SpecialEClosed C :=
  And.intro E.irreducibleClosed (And.intro E.atoroidalClosed
    (And.intro E.acylindricalClosed E.boundaryIncompressibleClosed))

end LowDimensionalTopologySpecialELemmaCanonicalLaneLean
end HautevilleHouse