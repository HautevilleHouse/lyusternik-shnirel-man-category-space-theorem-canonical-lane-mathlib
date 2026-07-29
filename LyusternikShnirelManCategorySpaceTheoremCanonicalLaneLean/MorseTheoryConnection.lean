import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure MorseTheoryConnectionPackage where
  manifold : Type u
  smoothStructure : Type v
  morseFunction : Type w
  criticalPointsCount : ℕ
  categoryLowerBound : ℕ
  morseFunctionExists : Prop
  criticalPointsCountDefined : Prop
  categoryLowerBoundProof : Prop

structure MorseTheoryConnectionEvidence (M : MorseTheoryConnectionPackage) where
  morseFunctionExistsClosed : M.morseFunctionExists
  criticalPointsCountDefinedClosed : M.criticalPointsCountDefined
  categoryLowerBoundProofClosed : M.categoryLowerBoundProof

def MorseTheoryConnectionClosed (M : MorseTheoryConnectionPackage) : Prop :=
  M.morseFunctionExists ∧ M.criticalPointsCountDefined ∧ M.categoryLowerBoundProof

theorem morse_theory_connection_closed_from_evidence (M : MorseTheoryConnectionPackage)
    (E : MorseTheoryConnectionEvidence M) : MorseTheoryConnectionClosed M := by
  exact And.intro E.morseFunctionExistsClosed
    (And.intro E.criticalPointsCountDefinedClosed E.categoryLowerBoundProofClosed)

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse