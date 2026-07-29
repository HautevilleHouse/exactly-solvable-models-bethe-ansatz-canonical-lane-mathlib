import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure TransferMatrixMethod where
  auxiliarySpace : Type
  quantumSpace : Type
  monodromyMatrix : Type
  transferMatrixDefined : Prop
  commutingTransferMatrices : Prop
  eigenvaluesComputed : Prop

structure TransferMatrixEvidence (T : TransferMatrixMethod) where
  transferMatrixDefinedClosed : T.transferMatrixDefined
  commutingTransferMatricesClosed : T.commutingTransferMatrices
  eigenvaluesComputedClosed : T.eigenvaluesComputed

def TransferMatrixMethodClosed (T : TransferMatrixMethod) : Prop :=
  T.transferMatrixDefined ∧ T.commutingTransferMatrices ∧ T.eigenvaluesComputed

theorem transfer_matrix_method_closed_from_evidence (T : TransferMatrixMethod)
    (E : TransferMatrixEvidence T) : TransferMatrixMethodClosed T := by
  exact And.intro E.transferMatrixDefinedClosed
    (And.intro E.commutingTransferMatricesClosed E.eigenvaluesComputedClosed)

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse