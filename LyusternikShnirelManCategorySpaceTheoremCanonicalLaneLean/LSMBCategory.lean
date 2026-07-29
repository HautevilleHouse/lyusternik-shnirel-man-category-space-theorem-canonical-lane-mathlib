import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure LSMBSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  coveringDimension : Prop
  categoryNumber : ℕ

structure LSMBCover where
  space : LSMBSpace
  coveringFamilies : List (Set space.carrier)
  eachOpen : ∀ U ∈ coveringFamilies, IsOpen U
  categoricalLowerBound : ℕ

structure CategoryAdmittedObject where
  space : LSMBSpace
  cover : LSMBCover space
  categoryLowerBoundWitness : ℕ
  conclusion : categoryLowerBoundWitness ≤ space.categoryNumber

def CategoryWitnessClosed (O : CategoryAdmittedObject) : Prop :=
  O.conclusion

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse