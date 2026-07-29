import canonicalLaneMathlib.AdmissibleClass
import exactlySolvableModelsBetheAnsatzCanonicalLaneLean.BridgeLemmas
import exactlySolvableModelsBetheAnsatzCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

def ConstrainedBetheAnsatzClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bethe_ansatz_endgame (A : AdmissibleClass) :
    ConstrainedBetheAnsatzClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse