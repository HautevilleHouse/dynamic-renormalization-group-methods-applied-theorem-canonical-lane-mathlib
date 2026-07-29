import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.CohomologyFixedPoint

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure LimitCycleClassificationPackage {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    {C : CocycleFunctionalPackage R} {G : CohomologyFixedPointStructurePackage C}
    {H : CohomologyFixedPointPackage G} (U : UniversalStructurePackage H) where
  finiteExtinctionAlternative : Prop
  thickThinDecomposition : Prop
  limitCycleClassified : Prop
  simplyConnectedCaseForcesCycle : Prop

structure LimitCycleClassificationEvidence {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    {C : CocycleFunctionalPackage R} {G : CohomologyFixedPointStructurePackage C}
    {H : CohomologyFixedPointPackage G} {U : UniversalStructurePackage H}
    (Z : LimitCycleClassificationPackage U) where
  finiteExtinctionAlternativeClosed : Z.finiteExtinctionAlternative
  thickThinDecompositionClosed : Z.thickThinDecomposition
  limitCycleClassifiedClosed : Z.limitCycleClassified
  simplyConnectedCaseForcesCycleClosed : Z.simplyConnectedCaseForcesCycle

def LimitCycleClassificationClosed {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    {C : CocycleFunctionalPackage R} {G : CohomologyFixedPointStructurePackage C}
    {H : CohomologyFixedPointPackage G} {U : UniversalStructurePackage H}
    (Z : LimitCycleClassificationPackage U) : Prop :=
  Z.finiteExtinctionAlternative ∧ Z.thickThinDecomposition ∧
  Z.limitCycleClassified ∧ Z.simplyConnectedCaseForcesCycle

theorem limit_cycle_classification_closed_from_evidence
    {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    {C : CocycleFunctionalPackage R} {G : CohomologyFixedPointStructurePackage C}
    {H : CohomologyFixedPointPackage G} {U : UniversalStructurePackage H}
    (Z : LimitCycleClassificationPackage U) (E : LimitCycleClassificationEvidence Z) :
    LimitCycleClassificationClosed Z := by
  exact And.intro E.finiteExtinctionAlternativeClosed
    (And.intro E.thickThinDecompositionClosed
      (And.intro E.limitCycleClassifiedClosed E.simplyConnectedCaseForcesCycleClosed))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
