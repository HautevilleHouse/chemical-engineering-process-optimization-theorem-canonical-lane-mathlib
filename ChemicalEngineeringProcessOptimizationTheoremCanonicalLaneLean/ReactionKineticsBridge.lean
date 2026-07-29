import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure ReactionKineticsPackage where
  rateEquation : Prop
  arrheniusLaw : Prop
  activationEnergyBound : Prop
  equilibriumConstant : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateEquationClosed : R.rateEquation
  arrheniusLawClosed : R.arrheniusLaw
  activationEnergyBoundClosed : R.activationEnergyBound
  equilibriumConstantClosed : R.equilibriumConstant

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateEquation ∧ R.arrheniusLaw ∧ R.activationEnergyBound ∧ R.equilibriumConstant

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateEquationClosed (And.intro E.arrheniusLawClosed (And.intro E.activationEnergyBoundClosed E.equilibriumConstantClosed))

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse