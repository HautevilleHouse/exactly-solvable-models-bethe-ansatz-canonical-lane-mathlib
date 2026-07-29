import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure BetheAdmittedObject where
  spinChain : QuantumSpinChain
  betheEquations : AlgebraicBetheEquations
  yangBaxter : YangBaxterEquation
  transferMatrix : TransferMatrixMethod
  closureCondition : Prop
  conclusion : Prop

structure BetheAdmissibleClass where
  object : BetheAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def BetheWitnessClosed (O : BetheAdmittedObject) : Prop :=
  O.closureCondition ∧ O.conclusion

def betheAdmittedClosure (A : BetheAdmissibleClass) : Prop :=
  BetheWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse