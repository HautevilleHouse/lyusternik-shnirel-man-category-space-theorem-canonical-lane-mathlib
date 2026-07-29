import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LusternikSchnirelmannCategorySpaceTheoremCanonicalLaneLean

structure MorseCriticalPoints where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : SmoothManifold manifold
  morseFunction : manifold → ℝ
  criticalPoints : Set manifold
  criticalPointsSetClosed : IsClosed criticalPoints
  categoryOfCritical : Nat
  categoryBound : categoryOfCritical ≥ 1

theorem morseBoundCategory (M : MorseCriticalPoints) : M.categoryOfCritical ≥ 1 := by
  exact M.categoryBound

end LusternikSchnirelmannCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse