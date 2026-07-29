import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure XXZSpinChain where
  hamiltonian : Type u
  couplingConstant : Type v
  anisotropyParameter : Prop
  BetheAnsatzSolvability : Prop

structure XXZSpinChainEvidence (X : XXZSpinChain) where
  anisotropyParameterClosed : X.anisotropyParameter
  BetheAnsatzSolvabilityClosed : X.BetheAnsatzSolvability

def XXZSpinChainClosed (X : XXZSpinChain) : Prop :=
  X.anisotropyParameter ∧ X.BetheAnsatzSolvability

theorem xxz_spin_chain_closed_from_evidence
    (X : XXZSpinChain) (E : XXZSpinChainEvidence X) :
    XXZSpinChainClosed X := by
  exact And.intro E.anisotropyParameterClosed E.BetheAnsatzSolvabilityClosed

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse