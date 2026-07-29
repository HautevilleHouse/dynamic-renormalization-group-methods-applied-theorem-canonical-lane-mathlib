import canonicalLaneMathlib.DynamicRenormalizationGroup.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure RGFlowEquationPackage (G : DynamicRenormalizationGroupPackage) where
  flowParameter : Type u
  betaFunction : flowParameter → Type v
  fixedPointCondition : Prop
  perturbationExpansion : Prop
  flowExistence : Prop

structure RGFlowEquationEvidence {G : DynamicRenormalizationGroupPackage} (F : RGFlowEquationPackage G) where
  fixedPointConditionClosed : F.fixedPointCondition
  perturbationExpansionClosed : F.perturbationExpansion
  flowExistenceClosed : F.flowExistence

def RGFlowEquationClosed {G : DynamicRenormalizationGroupPackage} (F : RGFlowEquationPackage G) : Prop :=
  F.fixedPointCondition ∧ F.perturbationExpansion ∧ F.flowExistence

theorem rg_flow_equation_closed_from_evidence {G : DynamicRenormalizationGroupPackage} (F : RGFlowEquationPackage G) (E : RGFlowEquationEvidence F) : RGFlowEquationClosed F := by
  exact And.intro E.fixedPointConditionClosed (And.intro E.perturbationExpansionClosed E.flowExistenceClosed)

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse