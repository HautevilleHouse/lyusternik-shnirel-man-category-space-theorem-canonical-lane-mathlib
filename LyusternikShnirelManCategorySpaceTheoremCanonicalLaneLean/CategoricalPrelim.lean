import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure SpaceTopology where
  carrier : Type u
  topology : TopologicalSpace carrier
  compact : Prop
  hausdorff : Prop
  contractibleOpenCover : Type v
  catNumber : ℕ
  catNumberDefined : catNumber = 0 ∨ catNumber > 0

structure LyusternikShnirelManAdmittedObject where
  space : SpaceTopology
  lyusternikShnirelManCategory : ℕ
  cupLength : ℕ
  cupLengthBound : cupLength ≤ lyusternikShnirelManCategory
  conclusion : lyusternikShnirelManCategory > 0

def LyusternikShnirelManWitnessClosed (O : LyusternikShnirelManAdmittedObject) : Prop :=
  O.conclusion

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse
