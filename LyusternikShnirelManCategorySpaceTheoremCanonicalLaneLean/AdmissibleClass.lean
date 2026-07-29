import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LyusternikShnirelManAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LyusternikShnirelManWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LyusternikShnirelManCategorySpaceTheoremCanonicalLaneLean
end HautevilleHouse
