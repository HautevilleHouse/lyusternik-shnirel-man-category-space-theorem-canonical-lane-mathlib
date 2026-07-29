import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean.CategorySpaceDefinition

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure ModelCategoryStructure (C : CategorySpace) where
  weakEquivalences : C.objects → C.objects → Prop
  fibrations : C.objects → C.objects → Prop
  cofibrations : C.objects → C.objects → Prop
  factorization : ∀ (f : C.morphisms A B), ∃ (Z : C.objects) (g : C.morphisms A Z) (h : C.morphisms Z B),
    cofibrations A Z ∧ weakEquivalences Z B ∧ C.compose h g = f
  liftingProperty : ∀ {X Y : C.objects} (i : C.morphisms X Y) (p : C.morphisms A B),
    cofibrations X Y → fibrations A B → ∃ (l : C.morphisms Y A), C.compose p l = C.compose l i

def ModelCategoryClosed {C : CategorySpace} (M : ModelCategoryStructure C) : Prop :=
  M.weakEquivalences ∧ M.fibrations ∧ M.cofibrations ∧ M.factorization ∧ M.liftingProperty

theorem model_category_closed_from_structure {C : CategorySpace} (M : ModelCategoryStructure C) :
    ModelCategoryClosed M :=
  And.intro M.weakEquivalences (And.intro M.fibrations (And.intro M.cofibrations (And.intro M.factorization M.liftingProperty)))

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse