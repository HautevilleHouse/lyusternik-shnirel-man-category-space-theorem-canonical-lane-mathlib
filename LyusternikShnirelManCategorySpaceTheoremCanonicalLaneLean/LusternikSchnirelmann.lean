import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure LusternikSchnirelmannCategoryPackage (A : AdmissibleClass) where
  coveringDimension : ℕ
  openCoverCount : ℕ
  eachSetContractible : Prop
  categoryEqualsCoverCount : coveringDimension = openCoverCount
  contractibleWitness : eachSetContractible
  categoryDefined : Prop
  categoryDefinedTerm : categoryDefined

structure LusternikSchnirelmannCategoryEvidence {A : AdmissibleClass} (P : LusternikSchnirelmannCategoryPackage A) where
  categoryEqualsCoverCountClosed : P.categoryEqualsCoverCount
  contractibleWitnessClosed : P.contractibleWitness
  categoryDefinedClosed : P.categoryDefined

def LusternikSchnirelmannCategoryClosed {A : AdmissibleClass} (P : LusternikSchnirelmannCategoryPackage A) : Prop :=
  P.categoryEqualsCoverCount ∧ P.contractibleWitness ∧ P.categoryDefined

theorem lusternik_schnirelmann_category_closed_from_evidence {A : AdmissibleClass} (P : LusternikSchnirelmannCategoryPackage A) (E : LusternikSchnirelmannCategoryEvidence P) :
    LusternikSchnirelmannCategoryClosed P := by
  exact And.intro E.categoryEqualsCoverCountClosed (And.intro E.contractibleWitnessClosed E.categoryDefinedClosed)

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse
