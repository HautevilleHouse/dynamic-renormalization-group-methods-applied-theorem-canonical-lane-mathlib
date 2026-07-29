import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.CriticalExponentComputation

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure ApplicationPackage {Φ : Type u} {R : RGSystem Φ} {B : BranchingOperatorExpansion R} {F : FixedPointClassificationPackage R B} {P : PerturbationExpansionPackage R B} {C : CriticalExponentPackage R B F P} where
  physicalSystem : Type v
  universalityClassConfirmed : Prop
  experimentalAgreement : Prop
  phaseDiagramDerived : Prop
  crossOverAnalysis : Prop

structure ApplicationEvidence {Φ : Type u} {R : RGSystem Φ} {B : BranchingOperatorExpansion R} {F : FixedPointClassificationPackage R B} {P : PerturbationExpansionPackage R B} {C : CriticalExponentPackage R B F P} (A : ApplicationPackage R B F P C) where
  universalityClassConfirmedClosed : A.universalityClassConfirmed
  experimentalAgreementClosed : A.experimentalAgreement
  phaseDiagramDerivedClosed : A.phaseDiagramDerived
  crossOverAnalysisClosed : A.crossOverAnalysis

def ApplicationClosed {Φ : Type u} {R : RGSystem Φ} {B : BranchingOperatorExpansion R} {F : FixedPointClassificationPackage R B} {P : PerturbationExpansionPackage R B} {C : CriticalExponentPackage R B F P} (A : ApplicationPackage R B F P C) : Prop :=
  A.universalityClassConfirmed ∧ A.experimentalAgreement ∧ A.phaseDiagramDerived ∧ A.crossOverAnalysis

theorem application_closed_from_evidence {Φ : Type u} {R : RGSystem Φ} {B : BranchingOperatorExpansion R} {F : FixedPointClassificationPackage R B} {P : PerturbationExpansionPackage R B} {C : CriticalExponentPackage R B F P} (A : ApplicationPackage R B F P C) (E : ApplicationEvidence A) : ApplicationClosed A := by
  exact And.intro E.universalityClassConfirmedClosed (And.intro E.experimentalAgreementClosed (And.intro E.phaseDiagramDerivedClosed E.crossOverAnalysisClosed))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse