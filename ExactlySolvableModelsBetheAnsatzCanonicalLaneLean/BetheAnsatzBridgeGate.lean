import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

def betheBridgeClosed (A : BetheAdmissibleClass) : Prop :=
  BetheWitnessClosed A.object

theorem bethe_bridge_from_admissible_class (A : BetheAdmissibleClass) :
    betheBridgeClosed A := by
  exact A.object.conclusion

def betheGateClosed (A : BetheAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bethe_gate_from_admissible_class (A : BetheAdmissibleClass) :
    betheGateClosed A := by
  exact A.gateWitness

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse