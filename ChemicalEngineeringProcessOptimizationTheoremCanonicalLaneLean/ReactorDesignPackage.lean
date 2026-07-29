import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure ReactorDesignPackage where
  reactorType : Type u
  massBalance : Prop
  energyBalance : Prop
  conversionProfile : Prop
  selectivityYield : Prop
  optimizationObjective : Prop
  constraints : Prop

structure ReactorDesignEvidence (R : ReactorDesignPackage) where
  massBalanceClosed : R.massBalance
  energyBalanceClosed : R.energyBalance
  conversionProfileClosed : R.conversionProfile
  selectivityYieldClosed : R.selectivityYield
  optimizationObjectiveClosed : R.optimizationObjective
  constraintsClosed : R.constraints

def ReactorDesignClosed (R : ReactorDesignPackage) : Prop :=
  R.massBalance ∧ R.energyBalance ∧ R.conversionProfile ∧
  R.selectivityYield ∧ R.optimizationObjective ∧ R.constraints

theorem reactor_design_closed_from_evidence (R : ReactorDesignPackage)
    (E : ReactorDesignEvidence R) : ReactorDesignClosed R := by
  exact And.intro E.massBalanceClosed
    (And.intro E.energyBalanceClosed
      (And.intro E.conversionProfileClosed
        (And.intro E.selectivityYieldClosed
          (And.intro E.optimizationObjectiveClosed E.constraintsClosed))))

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse