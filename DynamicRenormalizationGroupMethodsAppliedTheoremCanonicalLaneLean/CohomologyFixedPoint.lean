import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.FixedPointStructure

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure CohomologyFixedPointPackage {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    {C : CocycleFunctionalPackage R} (G : CohomologyFixedPointStructurePackage C) where
  cohomologyTrivial : Prop
  fixedPointControl : Prop
  scaleInvariantMeasure : Prop
  persistenceUnderFlow : Prop

structure CohomologyFixedPointEvidence {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    {C : CocycleFunctionalPackage R} {G : CohomologyFixedPointStructurePackage C}
    (H : CohomologyFixedPointPackage G) where
  cohomologyTrivialClosed : H.cohomologyTrivial
  fixedPointControlClosed : H.fixedPointControl
  scaleInvariantMeasureClosed : H.scaleInvariantMeasure
  persistenceUnderFlowClosed : H.persistenceUnderFlow

def CohomologyFixedPointClosed {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    {C : CocycleFunctionalPackage R} {G : CohomologyFixedPointStructurePackage C}
    (H : CohomologyFixedPointPackage G) : Prop :=
  H.cohomologyTrivial ∧ H.fixedPointControl ∧ H.scaleInvariantMeasure ∧ H.persistenceUnderFlow

theorem cohomology_fixed_point_closed_from_evidence
    {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    {C : CocycleFunctionalPackage R} {G : CohomologyFixedPointStructurePackage C}
    (H : CohomologyFixedPointPackage G) (E : CohomologyFixedPointEvidence H) :
    CohomologyFixedPointClosed H := by
  exact And.intro E.cohomologyTrivialClosed
    (And.intro E.fixedPointControlClosed
      (And.intro E.scaleInvariantMeasureClosed E.persistenceUnderFlowClosed))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
