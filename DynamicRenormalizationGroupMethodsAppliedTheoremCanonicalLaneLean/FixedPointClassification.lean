import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure FixedPointClassificationPackage where
  wilsonFisherFixedPoint : Prop
  epsilonExpansionConvergence : Prop
  criticalExponentsDerived : Prop
  universalityClassConfirmed : Prop
  wilsonFisherFixedPointTerm : wilsonFisherFixedPoint
  epsilonExpansionConvergenceTerm : epsilonExpansionConvergence
  criticalExponentsDerivedTerm : criticalExponentsDerived
  universalityClassConfirmedTerm : universalityClassConfirmed

structure FixedPointClassificationEvidence (F : FixedPointClassificationPackage) where
  wilsonFisherFixedPointClosed : F.wilsonFisherFixedPoint
  epsilonExpansionConvergenceClosed : F.epsilonExpansionConvergence
  criticalExponentsDerivedClosed : F.criticalExponentsDerived
  universalityClassConfirmedClosed : F.universalityClassConfirmed

def FixedPointClassificationClosed (F : FixedPointClassificationPackage) : Prop :=
  F.wilsonFisherFixedPoint ∧ F.epsilonExpansionConvergence ∧ F.criticalExponentsDerived ∧ F.universalityClassConfirmed

theorem fixed_point_classification_closed_from_evidence (F : FixedPointClassificationPackage)
    (E : FixedPointClassificationEvidence F) : FixedPointClassificationClosed F := by
  exact And.intro E.wilsonFisherFixedPointClosed
    (And.intro E.epsilonExpansionConvergenceClosed
      (And.intro E.criticalExponentsDerivedClosed E.universalityClassConfirmedClosed))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
