import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphicsVisualizationCanonicalLaneLean.MathlibAdmittedObjects

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure AntialiasingPackage where
  multisampling : Prop
  supersampling : Prop
  mipmapFiltering : Prop
  morphologicalAntialiasing : Prop

structure AntialiasingEvidence (AA : AntialiasingPackage) where
  multisamplingClosed : AA.multisampling
  supersamplingClosed : AA.supersampling
  mipmapFilteringClosed : AA.mipmapFiltering
  morphologicalAntialiasingClosed : AA.morphologicalAntialiasing

def AntialiasingClosed (AA : AntialiasingPackage) : Prop :=
  AA.multisampling ∧ AA.supersampling ∧ AA.mipmapFiltering ∧ AA.morphologicalAntialiasing

theorem antialiasing_closed_from_evidence (AA : AntialiasingPackage)
    (E : AntialiasingEvidence AA) : AntialiasingClosed AA := by
  exact And.intro E.multisamplingClosed
    (And.intro E.supersamplingClosed
      (And.intro E.mipmapFilteringClosed E.morphologicalAntialiasingClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse