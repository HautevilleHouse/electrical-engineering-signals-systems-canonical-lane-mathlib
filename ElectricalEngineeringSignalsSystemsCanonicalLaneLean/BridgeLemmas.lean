import ElectricalEngineeringSignalsSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SignalWitnessClosed A.object

def SignalWitnessClosed (O : SignalAdmittedObject) : Prop :=
  O.reconstructionGuaranteed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse