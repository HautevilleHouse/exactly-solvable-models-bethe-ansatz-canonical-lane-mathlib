import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure BetheAnsatzWavefunction (N : ℕ) where
  rapidities : Vector ℂ N
  normFactor : ℂ
  phase : ℂ
  amplitude : Vector ℂ N → ℂ
  rapiditiesDistinct : ∀ i j, i ≠ j → rapidities[i] ≠ rapidities[j]
  normFactorNonzero : normFactor ≠ 0
  phaseUnit : ‖phase‖ = 1
  amplitudeContinuous : Continuous amplitude

structure BetheAnsatzWavefunctionEvidence (N : ℕ) (ψ : BetheAnsatzWavefunction N) where
  rapiditiesDistinctClosed : ψ.rapiditiesDistinct
  normFactorNonzeroClosed : ψ.normFactorNonzero
  phaseUnitClosed : ψ.phaseUnit
  amplitudeContinuousClosed : ψ.amplitudeContinuous

def BetheAnsatzWavefunctionClosed (N : ℕ) (ψ : BetheAnsatzWavefunction N) : Prop :=
  ψ.rapiditiesDistinct ∧ ψ.normFactorNonzero ∧ ψ.phaseUnit ∧ ψ.amplitudeContinuous

theorem bethe_ansatz_wavefunction_closed_from_evidence (N : ℕ) (ψ : BetheAnsatzWavefunction N) (E : BetheAnsatzWavefunctionEvidence N ψ) :
    BetheAnsatzWavefunctionClosed N ψ := by
  exact And.intro E.rapiditiesDistinctClosed (And.intro E.normFactorNonzeroClosed (And.intro E.phaseUnitClosed E.amplitudeContinuousClosed))

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse