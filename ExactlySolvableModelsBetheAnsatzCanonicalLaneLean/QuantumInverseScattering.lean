import HautevilleHouse.ExactlySolvableModelsBetheAnsatzCanonicalLaneLean.IntegrableSpinChain

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure QuantumInverseScatteringMethod where
  rMatrix : Type
  monodromyMatrix : Type
  transferMatrix : Type
  yangBaxterEquation : Prop
  ultralocality : Prop
  commutationRelations : Prop
  yangBaxterEquationTerm : yangBaxterEquation
  ultralocalityTerm : ultralocality
  commutationRelationsTerm : commutationRelations

structure QISMEvidence (Q : QuantumInverseScatteringMethod) where
  yangBaxterEquationClosed : Q.yangBaxterEquation
  ultralocalityClosed : Q.ultralocality
  commutationRelationsClosed : Q.commutationRelations

def QISMClosed (Q : QuantumInverseScatteringMethod) : Prop :=
  Q.yangBaxterEquation ∧ Q.ultralocality ∧ Q.commutationRelations

theorem qism_closed_from_evidence (Q : QuantumInverseScatteringMethod) (E : QISMEvidence Q) :
    QISMClosed Q := by
  exact And.intro E.yangBaxterEquationClosed
    (And.intro E.ultralocalityClosed E.commutationRelationsClosed)

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse