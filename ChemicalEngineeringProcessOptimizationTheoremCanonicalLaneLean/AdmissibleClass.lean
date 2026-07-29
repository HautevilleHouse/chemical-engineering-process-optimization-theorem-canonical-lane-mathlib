import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure AdmissibleClass where
  processState : ProcessState
  constraintSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : constraintSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ProcessWitnessClosed A.processState ∧ (A.constraintSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
