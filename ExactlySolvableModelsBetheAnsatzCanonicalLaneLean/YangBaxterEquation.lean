import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure YangBaxterOperator (V : Type) where
  R_matrix : V → V → V → V
  spectralDependent : Prop
  crossingSymmetry : Prop

def YangBaxterEquation (R : YangBaxterOperator V) : Prop :=
  ∀ (u v w : ℂ) (x y z : V),
    R.R_matrix u v (R.R_matrix u w (R.R_matrix v w x y) z) =
    R.R_matrix v w (R.R_matrix u w (R.R_matrix u v x y) z)

structure YangBaxterEvidence (R : YangBaxterOperator V) where
  equationClosed : YangBaxterEquation R
  spectralDependenceClosed : R.spectralDependent

def YangBaxterClosed (R : YangBaxterOperator V) : Prop :=
  YangBaxterEquation R ∧ R.spectralDependent

theorem yang_baxter_closed_from_evidence (R : YangBaxterOperator V) (E : YangBaxterEvidence R) :
    YangBaxterClosed R := by
  exact And.intro E.equationClosed E.spectralDependenceClosed

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse