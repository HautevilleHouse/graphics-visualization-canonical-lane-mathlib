import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure GraphicsVisualizationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GraphicsVisualizationAdmittedObject where
  space : GraphicsVisualizationSpace
  continuousMapping : Prop
  resolution : Prop
  colorModel : Prop
  conclusion : continuousMapping ∧ resolution ∧ colorModel

structure GraphicsVisualizationEndgameState where
  object : GraphicsVisualizationAdmittedObject

def GraphicsVisualizationWitnessClosed (O : GraphicsVisualizationAdmittedObject) : Prop :=
  O.conclusion

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse