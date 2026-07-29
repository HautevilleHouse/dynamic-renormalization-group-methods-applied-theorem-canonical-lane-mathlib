import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.FixedPointClassification
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.PerturbationExpansion

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure CriticalExponentPackage {Φ : Type u} {R : RGSystem Φ} {B : BranchingOperatorExpansion R} {F : FixedPointClassificationPackage R B} {P : PerturbationExpansionPackage R B} where
  correlationLengthExponent : ℝ
  fisherExponent : ℝ
  susceptibilityExponent : ℝ
  specificHeatExponent : ℝ
  scalingRelations : Prop
  epsilonExpansionExpressions : Prop

structure CriticalExponentEvidence {Φ : Type u} {R : RGSystem Φ} {B : BranchingOperatorExpansion R} {F : FixedPointClassificationPackage R B} {P : PerturbationExpansionPackage R B} (C : CriticalExponentPackage R B F P) where
  scalingRelationsClosed : C.scalingRelations
  epsilonExpansionExpressionsClosed : C.epsilonExpansionExpressions

def CriticalExponentClosed {Φ : Type u} {R : RGSystem Φ} {B : BranchingOperatorExpansion R} {F : FixedPointClassificationPackage R B} {P : PerturbationExpansionPackage R B} (C : CriticalExponentPackage R B F P) : Prop :=
  C.scalingRelations ∧ C.epsilonExpansionExpressions

theorem critical_exponent_closed_from_evidence {Φ : Type u} {R : RGSystem Φ} {B : BranchingOperatorExpansion R} {F : FixedPointClassificationPackage R B} {P : PerturbationExpansionPackage R B} (C : CriticalExponentPackage R B F P) (E : CriticalExponentEvidence C) : CriticalExponentClosed C := by
  exact And.intro E.scalingRelationsClosed E.epsilonExpansionExpressionsClosed

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse