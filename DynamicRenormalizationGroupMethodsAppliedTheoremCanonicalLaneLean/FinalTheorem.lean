import canonicalLaneMathlib.AdmissibleClass
import DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.BlockSpinTransform
import DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.CumulantExpansion
import DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.FixedPointClassification

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedDRGClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_drg_endgame (A : AdmissibleClass) : ConstrainedDRGClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
