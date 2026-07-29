import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

structure WaveletPackage (G : SignalAdmittedObject) where
  motherWavelet : G.signalSpace
  scalingFunction : G.signalSpace
  multiresolutionAnalysis : Prop
  orthogonality : Prop
  compactSupport : Prop

def WaveletPackageClosed {G : SignalAdmittedObject} (W : WaveletPackage G) : Prop :=
  W.multiresolutionAnalysis ∧ W.orthogonality ∧ W.compactSupport

structure WaveletEvidence {G : SignalAdmittedObject} (W : WaveletPackage G) where
  multiresolutionAnalysisClosed : W.multiresolutionAnalysis
  orthogonalityClosed : W.orthogonality
  compactSupportClosed : W.compactSupport

theorem wavelet_package_closed_from_evidence {G : SignalAdmittedObject} (W : WaveletPackage G) (E : WaveletEvidence W) : WaveletPackageClosed W := by
  exact And.intro E.multiresolutionAnalysisClosed (And.intro E.orthogonalityClosed E.compactSupportClosed)

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse