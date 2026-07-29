import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringSignalsSystemsCanonicalLaneLean.AdmissibleClass

/-!
# Sampling Theorem Package
-/

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

structure SamplingTheoremPackage where
  bandlimitedCondition : Prop
  nyquistRate : Prop
  reconstructionKernel : Prop
  aliasingBound : Prop
  sincInterpolation : Prop

structure SamplingTheoremEvidence (S : SamplingTheoremPackage) where
  bandlimitedConditionClosed : S.bandlimitedCondition
  nyquistRateClosed : S.nyquistRate
  reconstructionKernelClosed : S.reconstructionKernel
  aliasingBoundClosed : S.aliasingBound
  sincInterpolationClosed : S.sincInterpolation

def SamplingTheoremClosed (S : SamplingTheoremPackage) : Prop :=
  S.bandlimitedCondition ∧ S.nyquistRate ∧
  S.reconstructionKernel ∧ S.aliasingBound ∧ S.sincInterpolation

theorem sampling_theorem_closed_from_evidence (S : SamplingTheoremPackage)
    (E : SamplingTheoremEvidence S) : SamplingTheoremClosed S := by
  exact And.intro E.bandlimitedConditionClosed
    (And.intro E.nyquistRateClosed
      (And.intro E.reconstructionKernelClosed
        (And.intro E.aliasingBoundClosed E.sincInterpolationClosed)))

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse