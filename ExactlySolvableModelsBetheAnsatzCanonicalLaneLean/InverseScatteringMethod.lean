import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure InverseScatteringMethod where
  LaxPair : Type u
  scatteringData : Type v
  timeEvolution : Prop
  reconstructionFormula : Prop

structure InverseScatteringMethodEvidence (I : InverseScatteringMethod) where
  timeEvolutionClosed : I.timeEvolution
  reconstructionFormulaClosed : I.reconstructionFormula

def InverseScatteringMethodClosed (I : InverseScatteringMethod) : Prop :=
  I.timeEvolution ∧ I.reconstructionFormula

theorem inverse_scattering_method_closed_from_evidence
    (I : InverseScatteringMethod) (E : InverseScatteringMethodEvidence I) :
    InverseScatteringMethodClosed I := by
  exact And.intro E.timeEvolutionClosed E.reconstructionFormulaClosed

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse