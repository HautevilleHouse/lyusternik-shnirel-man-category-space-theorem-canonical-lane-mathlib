import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LusternikSchnirelmannCategorySpaceTheoremCanonicalLaneLean

def ConstrainedLusternikSchnirelmannClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_lusternik_schnirelmann_endgame (A : AdmissibleClass) :
    ConstrainedLusternikSchnirelmannClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LusternikSchnirelmannCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse