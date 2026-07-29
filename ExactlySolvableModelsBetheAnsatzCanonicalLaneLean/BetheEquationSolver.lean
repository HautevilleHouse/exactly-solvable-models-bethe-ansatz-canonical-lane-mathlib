import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExactlySolvableModelsBetheAnsatzCanonicalLaneLean.AlgebraicBetheAnsatz

namespace HautevilleHouse
namespace ExactlySolvableModelsBetheAnsatzCanonicalLaneLean

structure BetheEquationSolver (V : Type u) [AddCommGroup V] [Module ℂ V] (Y : YangBaxterEquation V) (N : ℕ) where
  algebraicBetheAnsatz : AlgebraicBetheAnsatz V Y N
  solutionSet : Set (ℂ ^ N)
  allSolutionsFound : ∀ (λ : ℂ ^ N), algebraicBetheAnsatz.betheEquation λ ↔ λ ∈ solutionSet
  distinctSolutions : ∀ (λ₁ λ₂ : ℂ ^ N), λ₁ ∈ solutionSet → λ₂ ∈ solutionSet → λ₁ ≠ λ₂ → algebraicBetheAnsatz.betheStates λ₁ ≠ algebraicBetheAnsatz.betheStates λ₂
  completeness : Fintype solutionSet

structure BetheEquationSolverEvidence (V : Type u) [AddCommGroup V] [Module ℂ V] (Y : YangBaxterEquation V) (N : ℕ) (S : BetheEquationSolver V Y N) where
  allSolutionsFoundClosed : S.allSolutionsFound
  distinctSolutionsClosed : S.distinctSolutions
  completenessClosed : S.completeness

def BetheEquationSolverClosed (V : Type u) [AddCommGroup V] [Module ℂ V] (Y : YangBaxterEquation V) (N : ℕ) (S : BetheEquationSolver V Y N) : Prop :=
  S.allSolutionsFound ∧ S.distinctSolutions ∧ S.completeness

theorem bethe_equation_solver_closed_from_evidence (V : Type u) [AddCommGroup V] [Module ℂ V] (Y : YangBaxterEquation V) (N : ℕ) (S : BetheEquationSolver V Y N) (E : BetheEquationSolverEvidence V Y N S) :
    BetheEquationSolverClosed V Y N S := by
  exact And.intro E.allSolutionsFoundClosed (And.intro E.distinctSolutionsClosed E.completenessClosed)

end ExactlySolvableModelsBetheAnsatzCanonicalLaneLean
end HautevilleHouse