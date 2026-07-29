import HautevilleHouse.ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  equilibriumConstant : Prop
  reactionOrder : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  activationEnergyClosed : R.activationEnergy
  temperatureDependenceClosed : R.temperatureDependence
  equilibriumConstantClosed : R.equilibriumConstant
  reactionOrderClosed : R.reactionOrder

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.activationEnergy ∧ R.temperatureDependence ∧
  R.equilibriumConstant ∧ R.reactionOrder

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.temperatureDependenceClosed
        (And.intro E.equilibriumConstantClosed E.reactionOrderClosed)))

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse