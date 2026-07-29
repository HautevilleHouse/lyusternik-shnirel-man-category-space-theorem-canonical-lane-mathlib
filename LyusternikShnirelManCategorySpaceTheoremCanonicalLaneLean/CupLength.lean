import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean.LSMBCategory

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure CupLengthPackage where
  space : LSMBSpace
  cohomologyRing : Type u
  zeroCupLength : ℕ
  cupLengthBound : ℕ
  zeroCupLengthComputed : zeroCupLength = 0
  cupLengthBoundProperty : Prop

structure CupLengthEvidence (P : CupLengthPackage) where
  zeroCupLengthComputedClosed : P.zeroCupLengthComputed
  cupLengthBoundPropertyClosed : P.cupLengthBoundProperty

def CupLengthClosed (P : CupLengthPackage) : Prop :=
  P.zeroCupLengthComputed ∧ P.cupLengthBoundProperty

theorem cup_length_closed_from_evidence (P : CupLengthPackage) (E : CupLengthEvidence P) :
    CupLengthClosed P := by
  exact And.intro E.zeroCupLengthComputedClosed E.cupLengthBoundPropertyClosed

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse