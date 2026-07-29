import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure AlgebraicBetheEquations where
  rapidityVariables : List Type
  scatteringMatrix : Type
  transferMatrixEigenvalues : Prop
  energyFunctional : Prop
  referenceState : Prop

structure BetheEquationEvidence (B : AlgebraicBetheEquations) where
  rapidityVariablesDefined : B.rapidityVariables.length > 0
  scatteringMatrixClosed : Prop
  transferMatrixEigenvaluesClosed : B.transferMatrixEigenvalues
  energyFunctionalClosed : B.energyFunctional

def AlgebraicBetheEquationsClosed (B : AlgebraicBetheEquations) : Prop :=
  B.transferMatrixEigenvalues ∧ B.energyFunctional

theorem bethe_equations_closed_from_evidence (B : AlgebraicBetheEquations)
    (E : BetheEquationEvidence B) : AlgebraicBetheEquationsClosed B := by
  exact And.intro E.transferMatrixEigenvaluesClosed E.energyFunctionalClosed

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse