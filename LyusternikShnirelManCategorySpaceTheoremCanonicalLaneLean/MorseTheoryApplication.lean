import canonicalLaneMathlib.AdmissibleClass
import LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean.LyusternikShnirelmanCategoryFoundation

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure MorseFunctionData (X : TopologicalSpaceObject) where
  morseFunction : X.carrier → ℝ
  criticalPoints : Set X.carrier
  nondegenerate : Prop
  levelSetAnalysis : Prop

structure MorseTheoryApplicationPackage (X : TopologicalSpaceObject) where
  morseData : MorseFunctionData X
  catBoundEstimate : Prop
  cupLengthComparison : Prop

structure MorseTheoryApplicationEvidence {X : TopologicalSpaceObject} (M : MorseTheoryApplicationPackage X) where
  catBoundEstimateClosed : M.catBoundEstimate
  cupLengthComparisonClosed : M.cupLengthComparison

def MorseTheoryApplicationClosed {X : TopologicalSpaceObject} (M : MorseTheoryApplicationPackage X) : Prop :=
  M.catBoundEstimate ∧ M.cupLengthComparison

theorem morse_theory_application_closed_from_evidence
    {X : TopologicalSpaceObject} (M : MorseTheoryApplicationPackage X) (E : MorseTheoryApplicationEvidence M) :
    MorseTheoryApplicationClosed M := by
  exact And.intro E.catBoundEstimateClosed E.cupLengthComparisonClosed

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse