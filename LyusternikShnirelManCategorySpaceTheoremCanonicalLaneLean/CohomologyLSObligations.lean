import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure CohomologyLSObligationsPackage (A : AdmissibleClass) where
  cohomologyRing : Type u
  productStructure : Type v
  cupLengthComputed : ℕ
  cupLengthComputedCorrect : cupLengthComputed = A.object.cupLength
  cupLengthDefined : Prop
  cupLengthDefinedTerm : cupLengthDefined

structure CohomologyLSObligationsEvidence {A : AdmissibleClass} (P : CohomologyLSObligationsPackage A) where
  cupLengthComputedCorrectClosed : P.cupLengthComputedCorrect
  cupLengthDefinedClosed : P.cupLengthDefined

def CohomologyLSObligationsClosed {A : AdmissibleClass} (P : CohomologyLSObligationsPackage A) : Prop :=
  P.cupLengthComputedCorrect ∧ P.cupLengthDefined

theorem cohomology_ls_obligations_closed_from_evidence {A : AdmissibleClass} (P : CohomologyLSObligationsPackage A) (E : CohomologyLSObligationsEvidence P) :
    CohomologyLSObligationsClosed P := by
  exact And.intro E.cupLengthComputedCorrectClosed E.cupLengthDefinedClosed

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse
