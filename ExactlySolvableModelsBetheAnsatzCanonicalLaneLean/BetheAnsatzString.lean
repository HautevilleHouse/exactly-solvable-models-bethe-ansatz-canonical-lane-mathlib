import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure BetheString where
  rapidities : List ℂ
  length : ℕ
  parity : ℤ
  boundStateEnergy : ℂ

def stringConsistencyCondition (s : BetheString) : Prop :=
  s.length = s.rapidities.length ∧ s.parity = (s.length : ℤ) % 2

structure BetheStringEvidence (s : BetheString) where
  lengthMatch : s.length = s.rapidities.length
  parityMatch : s.parity = (s.length : ℤ) % 2

def BetheStringClosed (s : BetheString) : Prop :=
  stringConsistencyCondition s

theorem bethe_string_closed_from_evidence (s : BetheString) (E : BetheStringEvidence s) :
    BetheStringClosed s := by
  exact And.intro E.lengthMatch E.parityMatch

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse