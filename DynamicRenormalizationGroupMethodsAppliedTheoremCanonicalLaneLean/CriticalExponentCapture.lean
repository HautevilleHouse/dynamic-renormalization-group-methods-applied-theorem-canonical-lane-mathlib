import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean.ScaleBootstrapFlow

namespace HautevilleHouse
namespace DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean

structure CriticalExponentPackage {A : AdmissibleClass} (S : ScaleBootstrapPackage A) where
  epsilonExpansion : Prop
  etaExponent : Prop
  nuExponent : Prop
  zetaExponent : Prop
  scalingRelations : Prop
  epsilonExpansionTerm : epsilonExpansion
  etaExponentTerm : etaExponent
  nuExponentTerm : nuExponent
  zetaExponentTerm : zetaExponent
  scalingRelationsTerm : scalingRelations

structure CriticalExponentEvidence {A : AdmissibleClass} {S : ScaleBootstrapPackage A} (C : CriticalExponentPackage S) where
  epsilonExpansionClosed : C.epsilonExpansion
  etaExponentClosed : C.etaExponent
  nuExponentClosed : C.nuExponent
  zetaExponentClosed : C.zetaExponent
  scalingRelationsClosed : C.scalingRelations

def CriticalExponentClosed {A : AdmissibleClass} {S : ScaleBootstrapPackage A} (C : CriticalExponentPackage S) : Prop :=
  C.epsilonExpansion ∧ C.etaExponent ∧ C.nuExponent ∧ C.zetaExponent ∧ C.scalingRelations

theorem critical_exponent_closed_from_evidence
    {A : AdmissibleClass} {S : ScaleBootstrapPackage A} (C : CriticalExponentPackage S) (E : CriticalExponentEvidence C) :
    CriticalExponentClosed C := by
  exact And.intro E.epsilonExpansionClosed
    (And.intro E.etaExponentClosed
      (And.intro E.nuExponentClosed
        (And.intro E.zetaExponentClosed E.scalingRelationsClosed)))

end DynamicRenormalizationGroupMethodsAppliedTheoremCanonicalLaneLean
end HautevilleHouse
