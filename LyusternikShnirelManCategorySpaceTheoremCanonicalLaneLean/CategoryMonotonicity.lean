import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LusternikSchnirelmannCategorySpaceTheoremCanonicalLaneLean

structure CategoryMonotonicity where
  X : Type u
  Y : Type v
  topX : TopologicalSpace X
  topY : TopologicalSpace Y
  catX : Nat
  catY : Nat
  map : X → Y
  continuousMap : Continuous map
  monotonic : catY ≤ catX

theorem categoryMonotoneHomotopic (f g : X → Y) (h : Homotopic f g) (contF : Continuous f) (contG : Continuous g) : catY ≥ catX := by
  sorry

end LusternikSchnirelmannCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse