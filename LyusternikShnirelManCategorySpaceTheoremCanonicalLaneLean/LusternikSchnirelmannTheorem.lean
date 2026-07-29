import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure LusternikSchnirelmannTheoremPackage where
  space : Type u
  topology : TopologicalSpace space
  categoryNumber : ℕ
  cupLength : ℕ
  categoryMinCupLength : Prop
  catAtLeastCup : Prop

def LusternikSchnirelmannTheoremClosed (L : LusternikSchnirelmannTheoremPackage) : Prop :=
  L.categoryMinCupLength ∧ L.catAtLeastCup

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse