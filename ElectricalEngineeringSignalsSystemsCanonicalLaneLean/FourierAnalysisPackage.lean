import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringSignalsSystemsCanonicalLaneLean.AdmissibleClass

/-!
# Fourier Analysis Package
-/

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

structure FourierTransformPackage where
  continuousTransform : Prop
  discreteTransform : Prop
  inversionFormula : Prop
  convolutionTheorem : Prop
  parsevalIdentity : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  continuousTransformClosed : F.continuousTransform
  discreteTransformClosed : F.discreteTransform
  inversionFormulaClosed : F.inversionFormula
  convolutionTheoremClosed : F.convolutionTheorem
  parsevalIdentityClosed : F.parsevalIdentity

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.continuousTransform ∧ F.discreteTransform ∧
  F.inversionFormula ∧ F.convolutionTheorem ∧ F.parsevalIdentity

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage)
    (E : FourierTransformEvidence F) : FourierTransformClosed F := by
  exact And.intro E.continuousTransformClosed
    (And.intro E.discreteTransformClosed
      (And.intro E.inversionFormulaClosed
        (And.intro E.convolutionTheoremClosed E.parsevalIdentityClosed)))

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse