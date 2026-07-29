import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure BlockSpinTransformPackage where
  momentumShellPartition : Prop
  coarseGrainedFieldDefined : Prop
  rescalingTransformation : Prop
  fixedPointSearch : Prop
  momentumShellPartitionTerm : momentumShellPartition
  coarseGrainedFieldDefinedTerm : coarseGrainedFieldDefined
  rescalingTransformationTerm : rescalingTransformation
  fixedPointSearchTerm : fixedPointSearch

structure BlockSpinTransformEvidence (B : BlockSpinTransformPackage) where
  momentumShellPartitionClosed : B.momentumShellPartition
  coarseGrainedFieldDefinedClosed : B.coarseGrainedFieldDefined
  rescalingTransformationClosed : B.rescalingTransformation
  fixedPointSearchClosed : B.fixedPointSearch

def BlockSpinTransformClosed (B : BlockSpinTransformPackage) : Prop :=
  B.momentumShellPartition ∧ B.coarseGrainedFieldDefined ∧ B.rescalingTransformation ∧ B.fixedPointSearch

theorem block_spin_transform_closed_from_evidence (B : BlockSpinTransformPackage)
    (E : BlockSpinTransformEvidence B) : BlockSpinTransformClosed B := by
  exact And.intro E.momentumShellPartitionClosed
    (And.intro E.coarseGrainedFieldDefinedClosed
      (And.intro E.rescalingTransformationClosed E.fixedPointSearchClosed))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
