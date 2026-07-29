import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : Type u
  enthalpy : Type v
  entropy : Type w
  equilibriumCondition : Prop
  phaseEquilibrium : Prop
  chemicalPotentialConsistency : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  equilibriumConditionClosed : T.equilibriumCondition
  phaseEquilibriumClosed : T.phaseEquilibrium
  chemicalPotentialConsistencyClosed : T.chemicalPotentialConsistency

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.equilibriumCondition ∧ T.phaseEquilibrium ∧ T.chemicalPotentialConsistency

theorem thermodynamic_equilibrium_closed_from_evidence (T : ThermodynamicEquilibriumPackage)
    (E : ThermodynamicEquilibriumEvidence T) : ThermodynamicEquilibriumClosed T := by
  exact And.intro E.equilibriumConditionClosed
    (And.intro E.phaseEquilibriumClosed E.chemicalPotentialConsistencyClosed)

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse