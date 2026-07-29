import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure CumulantExpansionPackage where
  interactionExpansion : Prop
  irreducibleCumulantComputed : Prop
  leadingOrderReduction : Prop
  closureOfHigherOrders : Prop
  interactionExpansionTerm : interactionExpansion
  irreducibleCumulantComputedTerm : irreducibleCumulantComputed
  leadingOrderReductionTerm : leadingOrderReduction
  closureOfHigherOrdersTerm : closureOfHigherOrders

structure CumulantExpansionEvidence (C : CumulantExpansionPackage) where
  interactionExpansionClosed : C.interactionExpansion
  irreducibleCumulantComputedClosed : C.irreducibleCumulantComputed
  leadingOrderReductionClosed : C.leadingOrderReduction
  closureOfHigherOrdersClosed : C.closureOfHigherOrders

def CumulantExpansionClosed (C : CumulantExpansionPackage) : Prop :=
  C.interactionExpansion ∧ C.irreducibleCumulantComputed ∧ C.leadingOrderReduction ∧ C.closureOfHigherOrders

theorem cumulant_expansion_closed_from_evidence (C : CumulantExpansionPackage)
    (E : CumulantExpansionEvidence C) : CumulantExpansionClosed C := by
  exact And.intro E.interactionExpansionClosed
    (And.intro E.irreducibleCumulantComputedClosed
      (And.intro E.leadingOrderReductionClosed E.closureOfHigherOrdersClosed))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
