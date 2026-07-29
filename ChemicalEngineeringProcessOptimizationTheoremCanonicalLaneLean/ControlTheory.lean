import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure ProcessControlPackage where
  feedbackLoop : Prop
  pidTuning : Prop
  modelPredictiveControl : Prop
  stabilityMargin : Prop
  disturbanceRejection : Prop

structure ProcessControlEvidence (C : ProcessControlPackage) where
  feedbackLoopClosed : C.feedbackLoop
  pidTuningClosed : C.pidTuning
  modelPredictiveControlClosed : C.modelPredictiveControl
  stabilityMarginClosed : C.stabilityMargin
  disturbanceRejectionClosed : C.disturbanceRejection

def ProcessControlClosed (C : ProcessControlPackage) : Prop :=
  C.feedbackLoop ∧ C.pidTuning ∧ C.modelPredictiveControl ∧ C.stabilityMargin ∧ C.disturbanceRejection

theorem process_control_closed_from_evidence (C : ProcessControlPackage) (E : ProcessControlEvidence C) :
    ProcessControlClosed C := by
  exact And.intro E.feedbackLoopClosed
    (And.intro E.pidTuningClosed
      (And.intro E.modelPredictiveControlClosed
        (And.intro E.stabilityMarginClosed E.disturbanceRejectionClosed)))

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
