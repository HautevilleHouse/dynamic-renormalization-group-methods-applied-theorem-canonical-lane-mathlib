import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.RGSystemDefinition
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.BranchingOperatorExpansion

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure PerturbationExpansionPackage {Φ : Type u} {R : RGSystem Φ} {B : BranchingOperatorExpansion R} where
  epsilonExpansion : Prop
  loopOrder : ℕ
  feynmanDiagramSummation : Prop
  countertermAbsorption : Prop
  renormalizabilityProof : Prop
  betaFunctionToLoops : Prop

structure PerturbationEvidence {Φ : Type u} {R : RGSystem Φ} {B : BranchingOperatorExpansion R} (P : PerturbationExpansionPackage R B) where
  epsilonExpansionClosed : P.epsilonExpansion
  feynmanDiagramSummationClosed : P.feynmanDiagramSummation
  countertermAbsorptionClosed : P.countertermAbsorption
  renormalizabilityProofClosed : P.renormalizabilityProof
  betaFunctionToLoopsClosed : P.betaFunctionToLoops

def PerturbationExpansionClosed {Φ : Type u} {R : RGSystem Φ} {B : BranchingOperatorExpansion R} (P : PerturbationExpansionPackage R B) : Prop :=
  P.epsilonExpansion ∧ P.feynmanDiagramSummation ∧ P.countertermAbsorption ∧ P.renormalizabilityProof ∧ P.betaFunctionToLoops

theorem perturbation_expansion_closed_from_evidence {Φ : Type u} {R : RGSystem Φ} {B : BranchingOperatorExpansion R} (P : PerturbationExpansionPackage R B) (E : PerturbationEvidence P) : PerturbationExpansionClosed P := by
  exact And.intro E.epsilonExpansionClosed (And.intro E.feynmanDiagramSummationClosed (And.intro E.countertermAbsorptionClosed (And.intro E.renormalizabilityProofClosed E.betaFunctionToLoopsClosed)))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse