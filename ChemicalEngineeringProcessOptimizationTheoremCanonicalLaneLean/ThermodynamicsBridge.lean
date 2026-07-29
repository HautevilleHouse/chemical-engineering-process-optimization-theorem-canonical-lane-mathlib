import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure ThermodynamicsPackage where
  energyBalance : Prop
  entropyGeneration : Prop
  gibbsFreeEnergy : Prop
  phaseEquilibrium : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  energyBalanceClosed : T.energyBalance
  entropyGenerationClosed : T.entropyGeneration
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  phaseEquilibriumClosed : T.phaseEquilibrium

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.energyBalance ∧ T.entropyGeneration ∧ T.gibbsFreeEnergy ∧ T.phaseEquilibrium

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.energyBalanceClosed (And.intro E.entropyGenerationClosed (And.intro E.gibbsFreeEnergyClosed E.phaseEquilibriumClosed))

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse