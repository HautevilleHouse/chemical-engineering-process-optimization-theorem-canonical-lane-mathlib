import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

structure ProcessState where
  carrier : Type
  constraints : List Prop
  objective : Prop
  conclusion : ProcessState → Prop

def ProcessWitnessClosed (p : ProcessState) : Prop :=
  p.conclusion p

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
