import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure AlgebraicBetheAnsatz where
  monodromyMatrix : Type u
  creationOperator : Type v
  pseudoVacuum : Prop
  BetheVectorConstruction : Prop

structure AlgebraicBetheAnsatzEvidence (A : AlgebraicBetheAnsatz) where
  pseudoVacuumClosed : A.pseudoVacuum
  BetheVectorConstructionClosed : A.BetheVectorConstruction

def AlgebraicBetheAnsatzClosed (A : AlgebraicBetheAnsatz) : Prop :=
  A.pseudoVacuum ∧ A.BetheVectorConstruction

theorem algebraic_bethe_ansatz_closed_from_evidence
    (A : AlgebraicBetheAnsatz) (E : AlgebraicBetheAnsatzEvidence A) :
    AlgebraicBetheAnsatzClosed A := by
  exact And.intro E.pseudoVacuumClosed E.BetheVectorConstructionClosed

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse