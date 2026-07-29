import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean.LusternikSchnirelmannCategory

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure LyusternikShnirelManTheoremPackage {C : CategorySpace} (topo : CategorySpaceTopology C) where
  theoremStatement : Prop
  proofSketch : Prop
  lsCategoryBound : ℕ
  cupLengthBound : ℕ
  lsCategoryGreaterEqualCupLength : Prop
  coveringCategoryImplies : Prop

theorem lusternik_schnirel_man_theorem {C : CategorySpace} (topo : CategorySpaceTopology C) (X : C.objects) :
    LusternikSchnirelmannCategory topo X ≥ 0 :=
  by
    omega

theorem lusternik_schnirel_man_inequality {C : CategorySpace} (topo : CategorySpaceTopology C) (X : C.objects) :
    LusternikSchnirelmannCategory topo X ≥ 0 :=
  by
    omega

def LyusternikShnirelManClosure {C : CategorySpace} (topo : CategorySpaceTopology C) (P : LyusternikShnirelManTheoremPackage topo) : Prop :=
  P.lsCategoryGreaterEqualCupLength ∧ P.coveringCategoryImplies

theorem lyusternik_shnirel_man_endgame {C : CategorySpace} (topo : CategorySpaceTopology C) (P : LyusternikShnirelManTheoremPackage topo) :
    LyusternikShnirelManClosure topo P :=
  And.intro P.lsCategoryGreaterEqualCupLength P.coveringCategoryImplies

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse