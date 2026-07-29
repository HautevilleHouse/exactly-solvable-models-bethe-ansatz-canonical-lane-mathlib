import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure QuantumSpinChain where
  latticeSize : Nat
  spinHalfOperators : Bool
  heisenbergCoupling : Prop
  integrabilityCondition : Prop
  magnonScatteringData : Prop

structure SpinChainEvidence (C : QuantumSpinChain) where
  latticeSizePositive : C.latticeSize > 0
  heisenbergCouplingClosed : C.heisenbergCoupling
  integrabilityConditionClosed : C.integrabilityCondition
  magnonScatteringDataClosed : C.magnonScatteringData

def QuantumSpinChainClosed (C : QuantumSpinChain) : Prop :=
  C.heisenbergCoupling ∧ C.integrabilityCondition ∧ C.magnonScatteringData

theorem spin_chain_closed_from_evidence (C : QuantumSpinChain)
    (E : SpinChainEvidence C) : QuantumSpinChainClosed C := by
  exact And.intro E.heisenbergCouplingClosed
    (And.intro E.integrabilityConditionClosed E.magnonScatteringDataClosed)

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse