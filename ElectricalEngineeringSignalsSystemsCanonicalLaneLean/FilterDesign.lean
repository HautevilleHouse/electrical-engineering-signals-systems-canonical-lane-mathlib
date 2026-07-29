import ElectricalEngineeringSignalsSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

structure FilterPackage where
  filterStability : Prop
  causality : Prop
  realizability : Prop
  frequencyResponseSpecified : Prop

structure FilterEvidence (F : FilterPackage) where
  filterStabilityClosed : F.filterStability
  causalityClosed : F.causality
  realizabilityClosed : F.realizability
  frequencyResponseSpecifiedClosed : F.frequencyResponseSpecified

def FilterClosed (F : FilterPackage) : Prop :=
  F.filterStability ∧ F.causality ∧ F.realizability ∧ F.frequencyResponseSpecified

theorem filter_closed_from_evidence (F : FilterPackage) (E : FilterEvidence F) :
    FilterClosed F := by
  exact And.intro E.filterStabilityClosed
    (And.intro E.causalityClosed
      (And.intro E.realizabilityClosed E.frequencyResponseSpecifiedClosed))

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse