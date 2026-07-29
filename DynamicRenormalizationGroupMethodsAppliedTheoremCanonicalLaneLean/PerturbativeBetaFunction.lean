import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.WilsonFisherFixedPoint

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure PerturbativeBetaFunctionPackage {A : AdmissibleClass} {S : ScaleBootstrapPackage A} {C : CriticalExponentPackage S} {W : WilsonFisherFixedPointPackage A S C} where
  loopOrderExpansion : Prop
  feynmanDiagramSum : Prop
  dimensionalRegularization : Prop
  minimalSubtraction : Prop
  renormalizationScheme : Prop
  loopOrderExpansionTerm : loopOrderExpansion
  feynmanDiagramSumTerm : feynmanDiagramSum
  dimensionalRegularizationTerm : dimensionalRegularization
  minimalSubtractionTerm : minimalSubtraction
  renormalizationSchemeTerm : renormalizationScheme

structure PerturbativeBetaFunctionEvidence {A : AdmissibleClass} {S : ScaleBootstrapPackage A} {C : CriticalExponentPackage S} {W : WilsonFisherFixedPointPackage A S C} (P : PerturbativeBetaFunctionPackage A S C W) where
  loopOrderExpansionClosed : P.loopOrderExpansion
  feynmanDiagramSumClosed : P.feynmanDiagramSum
  dimensionalRegularizationClosed : P.dimensionalRegularization
  minimalSubtractionClosed : P.minimalSubtraction
  renormalizationSchemeClosed : P.renormalizationScheme

def PerturbativeBetaFunctionClosed {A : AdmissibleClass} {S : ScaleBootstrapPackage A} {C : CriticalExponentPackage S} {W : WilsonFisherFixedPointPackage A S C} (P : PerturbativeBetaFunctionPackage A S C W) : Prop :=
  P.loopOrderExpansion ∧ P.feynmanDiagramSum ∧ P.dimensionalRegularization ∧ P.minimalSubtraction ∧ P.renormalizationScheme

theorem perturbative_beta_function_closed_from_evidence
    {A : AdmissibleClass} {S : ScaleBootstrapPackage A} {C : CriticalExponentPackage S} {W : WilsonFisherFixedPointPackage A S C}
    (P : PerturbativeBetaFunctionPackage A S C W) (E : PerturbativeBetaFunctionEvidence P) :
    PerturbativeBetaFunctionClosed P := by
  exact And.intro E.loopOrderExpansionClosed
    (And.intro E.feynmanDiagramSumClosed
      (And.intro E.dimensionalRegularizationClosed
        (And.intro E.minimalSubtractionClosed E.renormalizationSchemeClosed)))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
