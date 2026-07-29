import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure GeometryProcessing where
  meshRepresentation : Prop
  transformationHierarchy : Prop
  clippingCulling : Prop
  tessellation : Prop

def GeometryProcessingClosed (G : GeometryProcessing) : Prop :=
  G.meshRepresentation ∧ G.transformationHierarchy ∧ G.clippingCulling ∧ G.tessellation

structure GeometryProcessingEvidence (G : GeometryProcessing) where
  meshRepresentationClosed : G.meshRepresentation
  transformationHierarchyClosed : G.transformationHierarchy
  clippingCullingClosed : G.clippingCulling
  tessellationClosed : G.tessellation

theorem geometry_processing_closed_from_evidence (G : GeometryProcessing) (E : GeometryProcessingEvidence G) :
    GeometryProcessingClosed G := by
  exact And.intro E.meshRepresentationClosed
    (And.intro E.transformationHierarchyClosed
      (And.intro E.clippingCullingClosed E.tessellationClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse
