import HautevilleHouse.LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure LyusternikShnirelmanSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LyusternikShnirelmanAdmittedObject where
  space : LyusternikShnirelmanSpace
  categoryUpperBound : ℕ
  categoryComputed : Prop
  cupLengthUpperBound : ℕ
  cupLengthNonzero : Prop
  conclusion : cupLengthNonzero → categoryUpperBound ≤ cupLengthUpperBound

def LyusternikShnirelmanWitnessClosed (O : LyusternikShnirelmanAdmittedObject) : Prop :=
  O.categoryComputed ∧ O.cupLengthNonzero

theorem witness_closed_cup_length_nonzero (O : LyusternikShnirelmanAdmittedObject) (h : LyusternikShnirelmanWitnessClosed O) : O.cupLengthNonzero := h.right

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse
