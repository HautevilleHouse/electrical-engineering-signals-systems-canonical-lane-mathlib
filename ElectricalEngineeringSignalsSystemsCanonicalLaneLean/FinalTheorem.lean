import ElectricalEngineeringSignalsSystemsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringSignalsSystemsCanonicalLaneLean

def ConstrainedSignalProcessingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_signal_processing_endgame (A : AdmissibleClass) :
    ConstrainedSignalProcessingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalEngineeringSignalsSystemsCanonicalLaneLean
end HautevilleHouse