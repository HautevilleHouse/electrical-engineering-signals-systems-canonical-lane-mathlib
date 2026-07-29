import HautevilleHouse.ElectricalEngineeringSignalsSystemsCanonicalLaneLean.MathlibStatement

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

structure SignalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AdmittedSignal where
  space : SignalSpace
  bandlimited : Prop
  finiteEnergy : Prop
  squareIntegrable : Prop
  conclusion : bandlimited ∧ finiteEnergy ∧ squareIntegrable

structure SignalProcessingEndgameState where
  object : AdmittedSignal

def SignalProcessingWitnessClosed (O : AdmittedSignal) : Prop :=
  O.conclusion

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse