import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean.LSMBCategory

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure CoveringDimensionEstimatePackage where
  space : LSMBSpace
  coveringDimensionBound : ℕ
  coverByContractibles : Prop
  categoricalUpperBound : ℕ
  coverByContractiblesEvidence : coverByContractibles
  categoricalUpperBoundBound : categoricalUpperBound ≤ coveringDimensionBound

structure CoveringDimensionEstimateEvidence (P : CoveringDimensionEstimatePackage) where
  coverByContractiblesEvidenceClosed : P.coverByContractiblesEvidence
  categoricalUpperBoundBoundClosed : P.categoricalUpperBoundBound

def CoveringDimensionEstimateClosed (P : CoveringDimensionEstimatePackage) : Prop :=
  P.coverByContractiblesEvidence ∧ P.categoricalUpperBoundBound

theorem covering_dimension_estimate_closed_from_evidence
    (P : CoveringDimensionEstimatePackage) (E : CoveringDimensionEstimateEvidence P) :
    CoveringDimensionEstimateClosed P := by
  exact And.intro E.coverByContractiblesEvidenceClosed E.categoricalUpperBoundBoundClosed

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse