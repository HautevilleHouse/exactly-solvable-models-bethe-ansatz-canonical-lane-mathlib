import ExactlySolvableModelsBetheAnsatzCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure AdmissibleClass where
  object : BetheAnsatzAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BetheAnsatzWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse