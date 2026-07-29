import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : Prop
  equilibriumConstant : Prop
  phaseEquilibrium : Prop
  activityCoefficients : Prop
  heatIntegration : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  equilibriumConstantClosed : T.equilibriumConstant
  phaseEquilibriumClosed : T.phaseEquilibrium
  activityCoefficientsClosed : T.activityCoefficients
  heatIntegrationClosed : T.heatIntegration

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.gibbsFreeEnergy ∧ T.equilibriumConstant ∧ T.phaseEquilibrium ∧ T.activityCoefficients ∧ T.heatIntegration

theorem thermodynamic_equilibrium_closed_from_evidence (T : ThermodynamicEquilibriumPackage) (E : ThermodynamicEquilibriumEvidence T) :
    ThermodynamicEquilibriumClosed T := by
  exact And.intro E.gibbsFreeEnergyClosed
    (And.intro E.equilibriumConstantClosed
      (And.intro E.phaseEquilibriumClosed
        (And.intro E.activityCoefficientsClosed E.heatIntegrationClosed)))

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
