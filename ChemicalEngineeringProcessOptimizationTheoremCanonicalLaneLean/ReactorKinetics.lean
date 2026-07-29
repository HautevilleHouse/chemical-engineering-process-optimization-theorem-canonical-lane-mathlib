import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure ReactorKineticsPackage where
  reactionMechanism : Prop
  rateConstants : Prop
  temperatureDependence : Prop
  catalystActivity : Prop
  conversionPrediction : Prop

structure ReactorKineticsEvidence (R : ReactorKineticsPackage) where
  reactionMechanismClosed : R.reactionMechanism
  rateConstantsClosed : R.rateConstants
  temperatureDependenceClosed : R.temperatureDependence
  catalystActivityClosed : R.catalystActivity
  conversionPredictionClosed : R.conversionPrediction

def ReactorKineticsClosed (R : ReactorKineticsPackage) : Prop :=
  R.reactionMechanism ∧ R.rateConstants ∧ R.temperatureDependence ∧ R.catalystActivity ∧ R.conversionPrediction

theorem reactor_kinetics_closed_from_evidence (R : ReactorKineticsPackage) (E : ReactorKineticsEvidence R) :
    ReactorKineticsClosed R := by
  exact And.intro E.reactionMechanismClosed
    (And.intro E.rateConstantsClosed
      (And.intro E.temperatureDependenceClosed
        (And.intro E.catalystActivityClosed E.conversionPredictionClosed)))

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
