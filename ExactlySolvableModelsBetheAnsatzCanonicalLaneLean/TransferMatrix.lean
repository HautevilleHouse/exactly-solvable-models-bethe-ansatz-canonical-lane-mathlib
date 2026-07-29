import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure TransferMatrix (N : ℕ) where
  auxiliarySpace : ℂ
  quantumSpace : ℂ
  matrixElement : ℂ
  spectralParameter : ℂ
  analyticContinuation : Prop

def transferMatrixClosedCondition (T : TransferMatrix N) : Prop :=
  T.analyticContinuation

structure TransferMatrixEvidence (T : TransferMatrix N) where
  analyticContinuationClosed : T.analyticContinuation

def TransferMatrixClosed (T : TransferMatrix N) : Prop :=
  transferMatrixClosedCondition T

theorem transfer_matrix_closed_from_evidence (T : TransferMatrix N) (E : TransferMatrixEvidence T) :
    TransferMatrixClosed T := by
  exact E.analyticContinuationClosed

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse