import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

def ConstrainedBetheClosure (A : BetheAdmissibleClass) : Prop :=
  betheBridgeClosed A ∧ betheGateClosed A

theorem constrained_bethe_endgame (A : BetheAdmissibleClass) :
    ConstrainedBetheClosure A := by
  exact And.intro (bethe_bridge_from_admissible_class A)
    (bethe_gate_from_admissible_class A)

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse