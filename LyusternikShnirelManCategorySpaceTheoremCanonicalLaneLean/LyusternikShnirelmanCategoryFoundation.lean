import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure TopologicalSpaceObject where
  carrier : Type u
  topology : TopologicalSpace carrier

structure CategoricalCoverObject where
  cover : TopologicalSpaceObject → Type v
  coverFamily : (X : TopologicalSpaceObject) → cover X → Set (Set X.carrier)
  coverAxiom : (X : TopologicalSpaceObject) → ∀ (c : cover X), ⋃₀ (coverFamily X c) = Set.univ

structure CategoryNumberDefinition where
  X : TopologicalSpaceObject
  cat : ℕ
  catDefined : Prop

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse