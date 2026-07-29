import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExactlySolvableModelsBetheAnsatzCanonicalLaneLean.BetheAnsatzAdmittedObject

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure NestedBetheAnsatzData (B : BetheAnsatzData) where
  rapidityOrdering : Prop
  nestedEquationsFormulated : Prop
  spinChainFactorization : Prop
  nestedEquationsSolved : Prop

structure NestedBetheAnsatzEvidence {B : BetheAnsatzData} (N : NestedBetheAnsatzData B) where
  rapidityOrderingClosed : N.rapidityOrdering
  nestedEquationsFormulatedClosed : N.nestedEquationsFormulated
  spinChainFactorizationClosed : N.spinChainFactorization
  nestedEquationsSolvedClosed : N.nestedEquationsSolved

def NestedBetheAnsatzClosed {B : BetheAnsatzData} (N : NestedBetheAnsatzData B) : Prop :=
  N.rapidityOrdering ∧ N.nestedEquationsFormulated ∧
  N.spinChainFactorization ∧ N.nestedEquationsSolved

theorem nested_bethe_ansatz_closed_from_evidence
    {B : BetheAnsatzData} (N : NestedBetheAnsatzData B)
    (E : NestedBetheAnsatzEvidence N) : NestedBetheAnsatzClosed N := by
  exact And.intro E.rapidityOrderingClosed
    (And.intro E.nestedEquationsFormulatedClosed
      (And.intro E.spinChainFactorizationClosed E.nestedEquationsSolvedClosed))

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse