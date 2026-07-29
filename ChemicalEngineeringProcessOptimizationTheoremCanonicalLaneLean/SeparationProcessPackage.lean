import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure SeparationProcessPackage where
  separationType : Type u
  equilibriumStages : Prop
  massTransferEfficiency : Prop
  purityRecovery : Prop
  energyConsumption : Prop
  designVariables : Prop

structure SeparationProcessEvidence (S : SeparationProcessPackage) where
  equilibriumStagesClosed : S.equilibriumStages
  massTransferEfficiencyClosed : S.massTransferEfficiency
  purityRecoveryClosed : S.purityRecovery
  energyConsumptionClosed : S.energyConsumption
  designVariablesClosed : S.designVariables

def SeparationProcessClosed (S : SeparationProcessPackage) : Prop :=
  S.equilibriumStages ∧ S.massTransferEfficiency ∧
  S.purityRecovery ∧ S.energyConsumption ∧ S.designVariables

theorem separation_process_closed_from_evidence (S : SeparationProcessPackage)
    (E : SeparationProcessEvidence S) : SeparationProcessClosed S := by
  exact And.intro E.equilibriumStagesClosed
    (And.intro E.massTransferEfficiencyClosed
      (And.intro E.purityRecoveryClosed
        (And.intro E.energyConsumptionClosed E.designVariablesClosed)))

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse