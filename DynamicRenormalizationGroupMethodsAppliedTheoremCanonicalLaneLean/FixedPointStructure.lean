import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.RGFlowStructure

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure FixedPointStructurePackage {F : RGFlowPackage} (R : RGFlowStructurePackage F) where
  fixedPointExists : Prop
  stabilityAnalysis : Prop
  perturbationExpansion : Prop
  convergenceRadius : Prop

structure FixedPointStructureEvidence {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    (U : FixedPointStructurePackage R) where
  fixedPointExistsClosed : U.fixedPointExists
  stabilityAnalysisClosed : U.stabilityAnalysis
  perturbationExpansionClosed : U.perturbationExpansion
  convergenceRadiusClosed : U.convergenceRadius

def FixedPointStructureClosed {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    (U : FixedPointStructurePackage R) : Prop :=
  U.fixedPointExists ∧ U.stabilityAnalysis ∧ U.perturbationExpansion ∧ U.convergenceRadius

theorem fixed_point_structure_closed_from_evidence
    {F : RGFlowPackage} {R : RGFlowStructurePackage F} (U : FixedPointStructurePackage R)
    (E : FixedPointStructureEvidence U) : FixedPointStructureClosed U := by
  exact And.intro E.fixedPointExistsClosed
    (And.intro E.stabilityAnalysisClosed
      (And.intro E.perturbationExpansionClosed E.convergenceRadiusClosed))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
