import ElectricalEngineeringSignalsSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

structure WaveletPackage where
  multiresolutionAnalysis : Prop
  waveletBasis : Prop
  scalingFunctionProperties : Prop
  waveletTransformProperties : Prop

structure WaveletEvidence (W : WaveletPackage) where
  multiresolutionAnalysisClosed : W.multiresolutionAnalysis
  waveletBasisClosed : W.waveletBasis
  scalingFunctionPropertiesClosed : W.scalingFunctionProperties
  waveletTransformPropertiesClosed : W.waveletTransformProperties

def WaveletClosed (W : WaveletPackage) : Prop :=
  W.multiresolutionAnalysis ∧ W.waveletBasis ∧
  W.scalingFunctionProperties ∧ W.waveletTransformProperties

theorem wavelet_closed_from_evidence (W : WaveletPackage) (E : WaveletEvidence W) :
    WaveletClosed W := by
  exact And.intro E.multiresolutionAnalysisClosed
    (And.intro E.waveletBasisClosed
      (And.intro E.scalingFunctionPropertiesClosed E.waveletTransformPropertiesClosed))

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse