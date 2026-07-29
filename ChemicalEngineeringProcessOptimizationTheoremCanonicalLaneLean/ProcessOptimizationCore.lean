import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure ProcessOptimizationPackage where
  objectiveFunction : Prop
  constraintsSatisfied : Prop
  optimalityConditions : Prop
  sensitivityAnalysis : Prop

structure ProcessOptimizationEvidence (P : ProcessOptimizationPackage) where
  objectiveFunctionClosed : P.objectiveFunction
  constraintsSatisfiedClosed : P.constraintsSatisfied
  optimalityConditionsClosed : P.optimalityConditions
  sensitivityAnalysisClosed : P.sensitivityAnalysis

def ProcessOptimizationClosed (P : ProcessOptimizationPackage) : Prop :=
  P.objectiveFunction ∧ P.constraintsSatisfied ∧ P.optimalityConditions ∧ P.sensitivityAnalysis

theorem process_optimization_closed_from_evidence (P : ProcessOptimizationPackage) (E : ProcessOptimizationEvidence P) : ProcessOptimizationClosed P := by
  exact And.intro E.objectiveFunctionClosed (And.intro E.constraintsSatisfiedClosed (And.intro E.optimalityConditionsClosed E.sensitivityAnalysisClosed))

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse