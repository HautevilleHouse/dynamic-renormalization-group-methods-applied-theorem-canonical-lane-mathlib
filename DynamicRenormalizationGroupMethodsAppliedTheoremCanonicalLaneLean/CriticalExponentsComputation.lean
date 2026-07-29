import canonicalLaneMathlib.DynamicRenormalizationGroup.FixedPointClassification

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure CriticalExponentsComputationPackage {G : DynamicRenormalizationGroupPackage} {F : RGFlowEquationPackage G} {C : FixedPointClassificationPackage F} {K : WilsonianRGKernelPackage F} where
  exponentEta : Type u
  exponentNu : Type v
  exponentGamma : Type w
  scalingRelations : Prop
  computedValues : Prop

structure CriticalExponentsComputationEvidence {G : DynamicRenormalizationGroupPackage} {F : RGFlowEquationPackage G} {C : FixedPointClassificationPackage F} {K : WilsonianRGKernelPackage F} (E : CriticalExponentsComputationPackage C K) where
  scalingRelationsClosed : E.scalingRelations
  computedValuesClosed : E.computedValues

def CriticalExponentsComputationClosed {G : DynamicRenormalizationGroupPackage} {F : RGFlowEquationPackage G} {C : FixedPointClassificationPackage F} {K : WilsonianRGKernelPackage F} (E : CriticalExponentsComputationPackage C K) : Prop :=
  E.scalingRelations ∧ E.computedValues

theorem critical_exponents_computation_closed_from_evidence {G : DynamicRenormalizationGroupPackage} {F : RGFlowEquationPackage G} {C : FixedPointClassificationPackage F} {K : WilsonianRGKernelPackage F} (E : CriticalExponentsComputationPackage C K) (Ev : CriticalExponentsComputationEvidence E) : CriticalExponentsComputationClosed E := by
  exact And.intro Ev.scalingRelationsClosed Ev.computedValuesClosed

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse