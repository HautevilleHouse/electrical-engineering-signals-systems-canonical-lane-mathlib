import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringSignalsSystemsCanonicalLaneLean.AdmissibleClass

/-!
# Wavelet Transform Package
-/

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

structure WaveletTransformPackage where
  motherWavelet : Prop
  scalingFunction : Prop
  multiresolutionAnalysis : Prop
  decompositionFilter : Prop
  reconstructionFilter : Prop

structure WaveletTransformEvidence (W : WaveletTransformPackage) where
  motherWaveletClosed : W.motherWavelet
  scalingFunctionClosed : W.scalingFunction
  multiresolutionAnalysisClosed : W.multiresolutionAnalysis
  decompositionFilterClosed : W.decompositionFilter
  reconstructionFilterClosed : W.reconstructionFilter

def WaveletTransformClosed (W : WaveletTransformPackage) : Prop :=
  W.motherWavelet ∧ W.scalingFunction ∧
  W.multiresolutionAnalysis ∧ W.decompositionFilter ∧ W.reconstructionFilter

theorem wavelet_transform_closed_from_evidence (W : WaveletTransformPackage)
    (E : WaveletTransformEvidence W) : WaveletTransformClosed W := by
  exact And.intro E.motherWaveletClosed
    (And.intro E.scalingFunctionClosed
      (And.intro E.multiresolutionAnalysisClosed
        (And.intro E.decompositionFilterClosed E.reconstructionFilterClosed)))

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse