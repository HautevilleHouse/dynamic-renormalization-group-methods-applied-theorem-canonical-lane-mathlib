import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.CriticalExponentCapture

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure WilsonFisherFixedPointPackage {A : AdmissibleClass} {S : ScaleBootstrapPackage A} {C : CriticalExponentPackage S} where
  fixedPointLocation : Type u
  couplingValues : Type v
  linearizationSpectrum : Prop
  eigenvalueCrossings : Prop
  closureConditions : Prop
  fixedPointLocationTerm : fixedPointLocation
  couplingValuesTerm : couplingValues
  linearizationSpectrumTerm : linearizationSpectrum
  eigenvalueCrossingsTerm : eigenvalueCrossings
  closureConditionsTerm : closureConditions

structure WilsonFisherFixedPointEvidence {A : AdmissibleClass} {S : ScaleBootstrapPackage A} {C : CriticalExponentPackage S} (W : WilsonFisherFixedPointPackage A S C) where
  fixedPointLocationClosed : W.fixedPointLocation
  couplingValuesClosed : W.couplingValues
  linearizationSpectrumClosed : W.linearizationSpectrum
  eigenvalueCrossingsClosed : W.eigenvalueCrossings
  closureConditionsClosed : W.closureConditions

def WilsonFisherFixedPointClosed {A : AdmissibleClass} {S : ScaleBootstrapPackage A} {C : CriticalExponentPackage S} (W : WilsonFisherFixedPointPackage A S C) : Prop :=
  W.fixedPointLocation ∧ W.couplingValues ∧ W.linearizationSpectrum ∧ W.eigenvalueCrossings ∧ W.closureConditions

theorem wilson_fisher_fixed_point_closed_from_evidence
    {A : AdmissibleClass} {S : ScaleBootstrapPackage A} {C : CriticalExponentPackage S}
    (W : WilsonFisherFixedPointPackage A S C) (E : WilsonFisherFixedPointEvidence W) :
    WilsonFisherFixedPointClosed W := by
  exact And.intro E.fixedPointLocationClosed
    (And.intro E.couplingValuesClosed
      (And.intro E.linearizationSpectrumClosed
        (And.intro E.eigenvalueCrossingsClosed E.closureConditionsClosed)))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
