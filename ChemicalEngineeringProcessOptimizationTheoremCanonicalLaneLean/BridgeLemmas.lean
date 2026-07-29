import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ProcessWitnessClosed A.processState

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.processState.conclusion

end ChemicalEngineeringProcessOptimizationTheoremCanonicalLaneLean
end HautevilleHouse
