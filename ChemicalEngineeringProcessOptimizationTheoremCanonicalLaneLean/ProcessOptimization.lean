import HautevilleHouse.ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean.Thermodynamics

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure ProcessOptimizationPackage {R : ReactionKineticsPackage}
    (T : ThermodynamicsPackage R) where
  objectiveFunction : Prop
  constraints : Prop
  designVariables : Prop
  optimalityConditions : Prop
  sensitivityAnalysis : Prop

structure ProcessOptimizationEvidence {R : ReactionKineticsPackage}
    {T : ThermodynamicsPackage R} (P : ProcessOptimizationPackage T) where
  objectiveFunctionClosed : P.objectiveFunction
  constraintsClosed : P.constraints
  designVariablesClosed : P.designVariables
  optimalityConditionsClosed : P.optimalityConditions
  sensitivityAnalysisClosed : P.sensitivityAnalysis

def ProcessOptimizationClosed {R : ReactionKineticsPackage}
    {T : ThermodynamicsPackage R} (P : ProcessOptimizationPackage T) : Prop :=
  P.objectiveFunction ∧ P.constraints ∧ P.designVariables ∧
  P.optimalityConditions ∧ P.sensitivityAnalysis

theorem process_optimization_closed_from_evidence {R : ReactionKineticsPackage}
    {T : ThermodynamicsPackage R} (P : ProcessOptimizationPackage T)
    (E : ProcessOptimizationEvidence P) : ProcessOptimizationClosed P := by
  exact And.intro E.objectiveFunctionClosed
    (And.intro E.constraintsClosed
      (And.intro E.designVariablesClosed
        (And.intro E.optimalityConditionsClosed E.sensitivityAnalysisClosed)))

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse