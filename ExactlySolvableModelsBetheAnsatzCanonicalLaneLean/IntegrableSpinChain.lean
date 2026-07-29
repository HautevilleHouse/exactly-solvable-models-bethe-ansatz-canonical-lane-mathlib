import HautevilleHouse.ExactlySolvableModelsBetheAnsatzCanonicalLaneLean.BetheAnsatzAdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure IntegrableSpinChain where
  latticeSize : Nat
  couplingConstant : ℝ
  hamiltonian : Type
  transferMatrix : Type
  betheEquations : Type
  spectralParameter : Type
  rapidities : List ℝ
  energyFormula : List ℝ → ℝ
  integrabilityProof : Prop
  rapiditiesTerm : List ℝ
  integrabilityProofTerm : integrabilityProof

structure SpinChainEvidence (S : IntegrableSpinChain) where
  integrabilityProofClosed : S.integrabilityProof
  rapiditiesClosed : S.rapiditiesTerm = S.rapidities

def SpinChainClosed (S : IntegrableSpinChain) : Prop :=
  S.integrabilityProof

theorem spin_chain_closed_from_evidence (S : IntegrableSpinChain) (E : SpinChainEvidence S) :
    SpinChainClosed S := by
  exact E.integrabilityProofClosed

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse