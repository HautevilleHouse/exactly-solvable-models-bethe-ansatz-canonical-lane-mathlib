import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure BetheAnsatzMasterEquation where
  transferMatrix : Type u
  rapiditySet : Type v
  referenceState : Prop
  eigenvalueEquation : Prop
  BetheEquations : Prop

structure BetheAnsatzMasterEquationEvidence (B : BetheAnsatzMasterEquation) where
  referenceStateClosed : B.referenceState
  eigenvalueEquationClosed : B.eigenvalueEquation
  BetheEquationsClosed : B.BetheEquations

def BetheAnsatzMasterEquationClosed (B : BetheAnsatzMasterEquation) : Prop :=
  B.referenceState ∧ B.eigenvalueEquation ∧ B.BetheEquations

theorem bethe_ansatz_master_equation_closed_from_evidence
    (B : BetheAnsatzMasterEquation) (E : BetheAnsatzMasterEquationEvidence B) :
    BetheAnsatzMasterEquationClosed B := by
  exact And.intro E.referenceStateClosed (And.intro E.eigenvalueEquationClosed E.BetheEquationsClosed)

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse