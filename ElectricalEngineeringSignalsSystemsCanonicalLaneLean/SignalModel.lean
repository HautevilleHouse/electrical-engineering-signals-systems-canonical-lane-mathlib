import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

structure SignalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SignalAdmittedObject where
  space : SignalSpace
  bounded : Prop
  continuous : Prop
  bandlimited : Prop
  conclusion : bandlimited

structure SignalEndgameState where
  object : SignalAdmittedObject

def SignalWitnessClosed (O : SignalAdmittedObject) : Prop :=
  O.bandlimited

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse