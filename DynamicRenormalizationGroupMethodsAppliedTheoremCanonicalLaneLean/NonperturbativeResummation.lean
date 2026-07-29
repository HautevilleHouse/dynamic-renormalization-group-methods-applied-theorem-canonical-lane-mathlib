import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.PerturbativeBetaFunction

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure NonperturbativeResummationPackage {A : AdmissibleClass} {S : ScaleBootstrapPackage A} {C : CriticalExponentPackage S} {W : WilsonFisherFixedPointPackage A S C} {P : PerturbativeBetaFunctionPackage A S C W} where
  borelTransform : Prop
  analyticContinuation : Prop
  renormalonCancellation : Prop
  finiteSummation : Prop
  convergentRegion : Prop
  borelTransformTerm : borelTransform
  analyticContinuationTerm : analyticContinuation
  renormalonCancellationTerm : renormalonCancellation
  finiteSummationTerm : finiteSummation
  convergentRegionTerm : convergentRegion

structure NonperturbativeResummationEvidence {A : AdmissibleClass} {S : ScaleBootstrapPackage A} {C : CriticalExponentPackage S} {W : WilsonFisherFixedPointPackage A S C} {P : PerturbativeBetaFunctionPackage A S C W} (N : NonperturbativeResummationPackage A S C W P) where
  borelTransformClosed : N.borelTransform
  analyticContinuationClosed : N.analyticContinuation
  renormalonCancellationClosed : N.renormalonCancellation
  finiteSummationClosed : N.finiteSummation
  convergentRegionClosed : N.convergentRegion

def NonperturbativeResummationClosed {A : AdmissibleClass} {S : ScaleBootstrapPackage A} {C : CriticalExponentPackage S} {W : WilsonFisherFixedPointPackage A S C} {P : PerturbativeBetaFunctionPackage A S C W} (N : NonperturbativeResummationPackage A S C W P) : Prop :=
  N.borelTransform ∧ N.analyticContinuation ∧ N.renormalonCancellation ∧ N.finiteSummation ∧ N.convergentRegion

theorem nonperturbative_resummation_closed_from_evidence
    {A : AdmissibleClass} {S : ScaleBootstrapPackage A} {C : CriticalExponentPackage S} {W : WilsonFisherFixedPointPackage A S C} {P : PerturbativeBetaFunctionPackage A S C W}
    (N : NonperturbativeResummationPackage A S C W P) (E : NonperturbativeResummationEvidence N) :
    NonperturbativeResummationClosed N := by
  exact And.intro E.borelTransformClosed
    (And.intro E.analyticContinuationClosed
      (And.intro E.renormalonCancellationClosed
        (And.intro E.finiteSummationClosed E.convergentRegionClosed)))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
