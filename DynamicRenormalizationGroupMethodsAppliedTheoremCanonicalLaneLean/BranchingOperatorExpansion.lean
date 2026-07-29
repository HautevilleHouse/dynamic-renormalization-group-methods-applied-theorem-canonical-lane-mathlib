import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.RGSystemDefinition

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure BranchingOperatorExpansion {Φ : Type u} (R : RGSystem Φ) where
  operatorDimension : Prop
  eigenoperatorFamily : Type v
  scalingDimensions : Prop
  irrelevantOperators : Prop
  marginalOperators : Prop
  relevantOperators : Prop

structure BranchingEvidence {Φ : Type u} {R : RGSystem Φ} (B : BranchingOperatorExpansion R) where
  operatorDimensionClosed : B.operatorDimension
  scalingDimensionsClosed : B.scalingDimensions
  irrelevantClosed : B.irrelevantOperators
  marginalClosed : B.marginalOperators
  relevantClosed : B.relevantOperators

def BranchingClosed {Φ : Type u} {R : RGSystem Φ} (B : BranchingOperatorExpansion R) : Prop :=
  B.operatorDimension ∧ B.scalingDimensions ∧ B.irrelevantOperators ∧ B.marginalOperators ∧ B.relevantOperators

theorem branching_closed_from_evidence {Φ : Type u} {R : RGSystem Φ} (B : BranchingOperatorExpansion R) (E : BranchingEvidence B) : BranchingClosed B := by
  exact And.intro E.operatorDimensionClosed (And.intro E.scalingDimensionsClosed (And.intro E.irrelevantClosed (And.intro E.marginalClosed E.relevantClosed)))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse