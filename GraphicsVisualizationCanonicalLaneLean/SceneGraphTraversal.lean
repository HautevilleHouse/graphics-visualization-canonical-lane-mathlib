import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure SceneGraphTraversalPackage where
  hierarchy : Prop
  boundingVolume : Prop
  frustumCulling : Prop
  levelOfDetail : Prop

structure SceneGraphTraversalEvidence (S : SceneGraphTraversalPackage) where
  hierarchyClosed : S.hierarchy
  boundingVolumeClosed : S.boundingVolume
  frustumCullingClosed : S.frustumCulling
  levelOfDetailClosed : S.levelOfDetail

def SceneGraphTraversalClosed (S : SceneGraphTraversalPackage) : Prop :=
  S.hierarchy ∧ S.boundingVolume ∧ S.frustumCulling ∧ S.levelOfDetail

theorem scene_graph_traversal_closed_from_evidence (S : SceneGraphTraversalPackage)
    (E : SceneGraphTraversalEvidence S) : SceneGraphTraversalClosed S := by
  exact And.intro E.hierarchyClosed (And.intro E.boundingVolumeClosed (And.intro E.frustumCullingClosed E.levelOfDetailClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse