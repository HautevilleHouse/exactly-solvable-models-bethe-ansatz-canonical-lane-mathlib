import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExactlySolvableModelsBetheAnsatzCanonicalLaneLean.BetheAnsatzAdmittedObject

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure AlgebraicBetheAnsatzData (B : BetheAnsatzData) where
  transferMatrixEigenvalues : Prop
  YangBaxterEquationSatisfied : Prop
  algebraicBasisIdentified : Prop

structure AlgebraicBetheAnsatzEvidence {B : BetheAnsatzData} (A : AlgebraicBetheAnsatzData B) where
  transferMatrixEigenvaluesClosed : A.transferMatrixEigenvalues
  YangBaxterEquationSatisfiedClosed : A.YangBaxterEquationSatisfied
  algebraicBasisIdentifiedClosed : A.algebraicBasisIdentified

def AlgebraicBetheAnsatzClosed {B : BetheAnsatzData} (A : AlgebraicBetheAnsatzData B) : Prop :=
  A.transferMatrixEigenvalues ∧ A.YangBaxterEquationSatisfied ∧ A.algebraicBasisIdentified

theorem algebraic_bethe_ansatz_closed_from_evidence
    {B : BetheAnsatzData} (A : AlgebraicBetheAnsatzData B)
    (E : AlgebraicBetheAnsatzEvidence A) : AlgebraicBetheAnsatzClosed A := by
  exact And.intro E.transferMatrixEigenvaluesClosed
    (And.intro E.YangBaxterEquationSatisfiedClosed E.algebraicBasisIdentifiedClosed)

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse