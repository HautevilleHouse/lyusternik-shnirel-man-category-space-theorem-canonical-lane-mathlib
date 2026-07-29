import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean.CategorySpaceDefinition

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure CwCWStructure {C : CategorySpace} where
  models : C.objects → Type u
  cofibrations : C.objects → C.objects → Prop
  weakEquivalences : C.objects → C.objects → Prop
  factorizations : ∀ (f : C.morphisms A B), ∃ (Z : C.objects) (g : C.morphisms A Z) (h : C.morphisms Z B), 
    cofibrations A Z ∧ weakEquivalences Z B ∧ C.compose h g = f
  lifting : ∀ {X Y : C.objects} (i : C.morphisms X Y) (p : C.morphisms A B),
    cofibrations X Y → weakEquivalences A B → ∃ (l : C.morphisms Y A), C.compose p l = C.compose l i

def CwCWClosed {C : CategorySpace} (W : CwCWStructure C) : Prop :=
  W.cofibrations ∧ W.weakEquivalences ∧ W.factorizations ∧ W.lifting

theorem cw_cw_closed_from_structure {C : CategorySpace} (W : CwCWStructure C) : CwCWClosed W :=
  And.intro (by
    intro A B f
    exact W.factorizations f) (And.intro W.cofibrations (And.intro W.weakEquivalences W.lifting))

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse