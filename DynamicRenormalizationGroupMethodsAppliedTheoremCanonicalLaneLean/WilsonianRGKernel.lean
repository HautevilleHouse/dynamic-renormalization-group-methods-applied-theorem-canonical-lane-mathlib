import canonicalLaneMathlib.DynamicRenormalizationGroup.RGFlowEquation

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure WilsonianRGKernelPackage {G : DynamicRenormalizationGroupPackage} {F : RGFlowEquationPackage G} where
  cutoffFunction : Type u
  momentumShell : Prop
  modeElimination : Prop
  effectiveActionFlow : Prop

structure WilsonianRGKernelEvidence {G : DynamicRenormalizationGroupPackage} {F : RGFlowEquationPackage G} (K : WilsonianRGKernelPackage F) where
  momentumShellClosed : K.momentumShell
  modeEliminationClosed : K.modeElimination
  effectiveActionFlowClosed : K.effectiveActionFlow

def WilsonianRGKernelClosed {G : DynamicRenormalizationGroupPackage} {F : RGFlowEquationPackage G} (K : WilsonianRGKernelPackage F) : Prop :=
  K.momentumShell ∧ K.modeElimination ∧ K.effectiveActionFlow

theorem wilsonian_rg_kernel_closed_from_evidence {G : DynamicRenormalizationGroupPackage} {F : RGFlowEquationPackage G} (K : WilsonianRGKernelPackage F) (E : WilsonianRGKernelEvidence K) : WilsonianRGKernelClosed K := by
  exact And.intro E.momentumShellClosed (And.intro E.modeEliminationClosed E.effectiveActionFlowClosed)

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse