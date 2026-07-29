import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure GraphicsAdmittedObject where
  sceneGraph : Type
  renderingResult : Type
  imageCorrectness : Prop
  conclusion : imageCorrectness

structure GraphicsEndgameState where
  object : GraphicsAdmittedObject

def GraphicsWitnessClosed (O : GraphicsAdmittedObject) : Prop :=
  O.imageCorrectness

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse