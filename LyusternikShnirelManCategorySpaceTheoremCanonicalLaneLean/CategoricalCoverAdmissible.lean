import canonicalLaneMathlib.AdmissibleClass
import LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean.LyusternikShnirelmanCategoryFoundation

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure CategoricalCoverPackage (X : TopologicalSpaceObject) where
  cover : CategoricalCoverObject
  coveringDimBound : ℕ
  contractibleCover : Prop
  locallyContractible : Prop

structure CategoricalCoverEvidence {X : TopologicalSpaceObject} (C : CategoricalCoverPackage X) where
  coveringDimBoundClosed : C.coveringDimBound = 0 ∨ C.coveringDimBound = 1
  contractibleCoverClosed : C.contractibleCover
  locallyContractibleClosed : C.locallyContractible

def CategoricalCoverClosed {X : TopologicalSpaceObject} (C : CategoricalCoverPackage X) : Prop :=
  (C.coveringDimBound = 0 ∨ C.coveringDimBound = 1) ∧ C.contractibleCover ∧ C.locallyContractible

theorem categorical_cover_closed_from_evidence
    {X : TopologicalSpaceObject} (C : CategoricalCoverPackage X) (E : CategoricalCoverEvidence C) :
    CategoricalCoverClosed C := by
  exact And.intro E.coveringDimBoundClosed (And.intro E.contractibleCoverClosed E.locallyContractibleClosed)

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse