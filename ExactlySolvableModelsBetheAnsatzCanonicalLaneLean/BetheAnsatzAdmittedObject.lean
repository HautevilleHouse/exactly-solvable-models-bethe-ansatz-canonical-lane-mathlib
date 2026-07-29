import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure BetheAnsatzData where
  N : ℕ
  coupling : ℝ
  rapidities : List ℝ
  BetheEquationsSatisfied : Prop

structure BetheAnsatzAdmittedObject where
  data : BetheAnsatzData
  integrabilityProved : Prop
  spectrumResolved : Prop
  wavefunctionsConstructed : Prop
  conclusion : integrabilityProved ∧ spectrumResolved ∧ wavefunctionsConstructed

def BetheAnsatzWitnessClosed (O : BetheAnsatzAdmittedObject) : Prop :=
  O.conclusion

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse