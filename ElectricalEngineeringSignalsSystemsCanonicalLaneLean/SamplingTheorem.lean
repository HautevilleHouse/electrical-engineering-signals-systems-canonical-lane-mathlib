import ElectricalEngineeringSignalsSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

structure SamplingPackage where
  nyquistRate : Prop
  reconstructionFormula : Prop
  aliasingAvoided : Prop
  bandlimitedAssumption : Prop

structure SamplingEvidence (S : SamplingPackage) where
  nyquistRateClosed : S.nyquistRate
  reconstructionFormulaClosed : S.reconstructionFormula
  aliasingAvoidedClosed : S.aliasingAvoided
  bandlimitedAssumptionClosed : S.bandlimitedAssumption

def SamplingClosed (S : SamplingPackage) : Prop :=
  S.nyquistRate ∧ S.reconstructionFormula ∧
  S.aliasingAvoided ∧ S.bandlimitedAssumption

theorem sampling_closed_from_evidence (S : SamplingPackage) (E : SamplingEvidence S) :
    SamplingClosed S := by
  exact And.intro E.nyquistRateClosed
    (And.intro E.reconstructionFormulaClosed
      (And.intro E.aliasingAvoidedClosed E.bandlimitedAssumptionClosed))

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse