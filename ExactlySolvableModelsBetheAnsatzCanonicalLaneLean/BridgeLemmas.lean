import ExactlySolvableModelsBetheAnsatzCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BetheAnsatzWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse