import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.FixedPointStructure

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure UniversalStructurePackage {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    (U : FixedPointStructurePackage R) where
  universalityClass : Type u
  criticalExponents : Prop
  scalingRelations : Prop
  universalityEvidence : Prop

structure UniversalStructureEvidence {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    {U : FixedPointStructurePackage R} (S : UniversalStructurePackage U) where
  criticalExponentsClosed : S.criticalExponents
  scalingRelationsClosed : S.scalingRelations
  universalityEvidenceClosed : S.universalityEvidence

def UniversalStructureClosed {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    {U : FixedPointStructurePackage R} (S : UniversalStructurePackage U) : Prop :=
  S.criticalExponents ∧ S.scalingRelations ∧ S.universalityEvidence

theorem universal_structure_closed_from_evidence
    {F : RGFlowPackage} {R : RGFlowStructurePackage F}
    {U : FixedPointStructurePackage R} (S : UniversalStructurePackage U)
    (E : UniversalStructureEvidence S) : UniversalStructureClosed S := by
  exact And.intro E.criticalExponentsClosed
    (And.intro E.scalingRelationsClosed E.universalityEvidenceClosed)

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
