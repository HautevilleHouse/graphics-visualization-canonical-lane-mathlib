import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure AdmissibleClass where
  object : GraphicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GraphicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse