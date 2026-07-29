import canonicalLaneMathlib.AdmissibleClass
import LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean.LyusternikShnirelmanCategoryFoundation

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure CategoryLowerBoundPackage (X : TopologicalSpaceObject) where
  catX : ℕ
  criticalPoints : Set X.carrier
  cuplengthLowerBound : Prop
  criticalPointExists : Prop

structure CategoryLowerBoundEvidence {X : TopologicalSpaceObject} (C : CategoryLowerBoundPackage X) where
  cuplengthLowerBoundClosed : C.cuplengthLowerBound
  criticalPointExistsClosed : C.criticalPointExists

def CategoryLowerBoundClosed {X : TopologicalSpaceObject} (C : CategoryLowerBoundPackage X) : Prop :=
  C.cuplengthLowerBound ∧ C.criticalPointExists

theorem category_lower_bound_closed_from_evidence
    {X : TopologicalSpaceObject} (C : CategoryLowerBoundPackage X) (E : CategoryLowerBoundEvidence C) :
    CategoryLowerBoundClosed C := by
  exact And.intro E.cuplengthLowerBoundClosed E.criticalPointExistsClosed

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse