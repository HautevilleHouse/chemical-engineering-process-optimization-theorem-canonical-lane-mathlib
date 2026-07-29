import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure CatalyticReactorModel where
  reactorType : String
  catalystActivity : ℝ
  temperatureProfile : ℝ → ℝ
  concentrationProfile : ℝ → ℝ
  reactionRateConstant : ℝ
  adsorptionConstant : ℝ
  desorptionConstant : ℝ
  rateExpression : String
  pressureDrop : ℝ

structure CatalyticReactorEvidence (M : CatalyticReactorModel) where
  catalystActivityPositive : M.catalystActivity > 0
  temperatureProfileContinuous : ContinuousOn M.temperatureProfile (Set.Icc 0 1)
  concentrationProfileContinuous : ContinuousOn M.concentrationProfile (Set.Icc 0 1)
  reactionRatePositive : M.reactionRateConstant > 0
  adsorptionPositive : M.adsorptionConstant > 0
  desorptionPositive : M.desorptionConstant > 0

def CatalyticReactorClosed (M : CatalyticReactorModel) : Prop :=
  M.catalystActivity > 0 ∧
  (ContinuousOn M.temperatureProfile (Set.Icc 0 1)) ∧
  (ContinuousOn M.concentrationProfile (Set.Icc 0 1)) ∧
  M.reactionRateConstant > 0 ∧
  M.adsorptionConstant > 0 ∧
  M.desorptionConstant > 0

theorem catalytic_reactor_closed_from_evidence (M : CatalyticReactorModel) (E : CatalyticReactorEvidence M) : CatalyticReactorClosed M := by
  exact And.intro E.catalystActivityPositive
    (And.intro E.temperatureProfileContinuous
      (And.intro E.concentrationProfileContinuous
        (And.intro E.reactionRatePositive
          (And.intro E.adsorptionPositive E.desorptionPositive))))

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse