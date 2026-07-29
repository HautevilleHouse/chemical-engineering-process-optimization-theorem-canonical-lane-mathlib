import HautevilleHouse.ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean.ReactionKinetics

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure ThermodynamicsPackage (R : ReactionKineticsPackage) where
  energyBalance : Prop
  entropyGeneration : Prop
  heatExchange : Prop
  workTerms : Prop
  temperatureProfile : Prop

structure ThermodynamicsEvidence {R : ReactionKineticsPackage}
    (T : ThermodynamicsPackage R) where
  energyBalanceClosed : T.energyBalance
  entropyGenerationClosed : T.entropyGeneration
  heatExchangeClosed : T.heatExchange
  workTermsClosed : T.workTerms
  temperatureProfileClosed : T.temperatureProfile

def ThermodynamicsClosed {R : ReactionKineticsPackage}
    (T : ThermodynamicsPackage R) : Prop :=
  T.energyBalance ∧ T.entropyGeneration ∧ T.heatExchange ∧
  T.workTerms ∧ T.temperatureProfile

theorem thermodynamics_closed_from_evidence {R : ReactionKineticsPackage}
    (T : ThermodynamicsPackage R) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.energyBalanceClosed
    (And.intro E.entropyGenerationClosed
      (And.intro E.heatExchangeClosed
        (And.intro E.workTermsClosed E.temperatureProfileClosed)))

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse