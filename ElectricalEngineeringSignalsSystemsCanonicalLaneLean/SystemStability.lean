import HautevilleHouse.ElectricalEngineeringSignalsSystemsCanonicalLaneLean.SamplingTheorem

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

structure SystemStabilityPackage where
  boundedInputBoundedOutput : Prop
  impulseResponseIntegrable : Prop
  polesInLeftHalfPlane : Prop
  frequencyResponseBounded : Prop

structure SystemStabilityEvidence (S : SystemStabilityPackage) where
  boundedInputBoundedOutputClosed : S.boundedInputBoundedOutput
  impulseResponseIntegrableClosed : S.impulseResponseIntegrable
  polesInLeftHalfPlaneClosed : S.polesInLeftHalfPlane
  frequencyResponseBoundedClosed : S.frequencyResponseBounded

def SystemStabilityClosed (S : SystemStabilityPackage) : Prop :=
  S.boundedInputBoundedOutput ∧ S.impulseResponseIntegrable ∧ S.polesInLeftHalfPlane ∧ S.frequencyResponseBounded

theorem system_stability_closed_from_evidence (S : SystemStabilityPackage) (E : SystemStabilityEvidence S) :
    SystemStabilityClosed S := by
  exact And.intro E.boundedInputBoundedOutputClosed (And.intro E.impulseResponseIntegrableClosed (And.intro E.polesInLeftHalfPlaneClosed E.frequencyResponseBoundedClosed))

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse