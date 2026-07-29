import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringSignalsSystemsCanonicalLaneLean.AdmissibleClass

/-!
# Filter Design Package
-/

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

structure FilterDesignPackage where
  linearFilterType : Prop
  stabilityCondition : Prop
  causalityCondition : Prop
  frequencyResponse : Prop
  poleZeroPlacement : Prop

structure FilterDesignEvidence (F : FilterDesignPackage) where
  linearFilterTypeClosed : F.linearFilterType
  stabilityConditionClosed : F.stabilityCondition
  causalityConditionClosed : F.causalityCondition
  frequencyResponseClosed : F.frequencyResponse
  poleZeroPlacementClosed : F.poleZeroPlacement

def FilterDesignClosed (F : FilterDesignPackage) : Prop :=
  F.linearFilterType ∧ F.stabilityCondition ∧
  F.causalityCondition ∧ F.frequencyResponse ∧ F.poleZeroPlacement

theorem filter_design_closed_from_evidence (F : FilterDesignPackage)
    (E : FilterDesignEvidence F) : FilterDesignClosed F := by
  exact And.intro E.linearFilterTypeClosed
    (And.intro E.stabilityConditionClosed
      (And.intro E.causalityConditionClosed
        (And.intro E.frequencyResponseClosed E.poleZeroPlacementClosed)))

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse