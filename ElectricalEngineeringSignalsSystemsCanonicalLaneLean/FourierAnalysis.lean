import ElectricalEngineeringSignalsSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

structure FourierTransformPackage where
  transformDefined : Prop
  inversionHolds : Prop
  convolutionTheorem : Prop
  isometryProperty : Prop

structure FourierTransformEvidence (F : FourierTransformPackage) where
  transformDefinedClosed : F.transformDefined
  inversionHoldsClosed : F.inversionHolds
  convolutionTheoremClosed : F.convolutionTheorem
  isometryPropertyClosed : F.isometryProperty

def FourierTransformClosed (F : FourierTransformPackage) : Prop :=
  F.transformDefined ∧ F.inversionHolds ∧ F.convolutionTheorem ∧ F.isometryProperty

theorem fourier_transform_closed_from_evidence (F : FourierTransformPackage) (E : FourierTransformEvidence F) :
    FourierTransformClosed F := by
  exact And.intro E.transformDefinedClosed
    (And.intro E.inversionHoldsClosed
      (And.intro E.convolutionTheoremClosed E.isometryPropertyClosed))

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse