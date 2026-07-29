import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SignalAdmittedObject where
  signalSpace : Type
  finiteEnergy : Prop
  bandlimited : Prop
  reconstructionGuaranteed : Prop
  conclusion : reconstructionGuaranteed

structure AdmissibleClass where
  object : SignalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SignalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse