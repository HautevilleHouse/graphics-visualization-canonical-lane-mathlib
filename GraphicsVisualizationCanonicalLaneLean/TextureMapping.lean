import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure TextureMapping where
  samplingFiltering : Prop
  mipmapping : Prop
  textureCoordinateGeneration : Prop
  textureAtlas : Prop

def TextureMappingClosed (T : TextureMapping) : Prop :=
  T.samplingFiltering ∧ T.mipmapping ∧ T.textureCoordinateGeneration ∧ T.textureAtlas

structure TextureMappingEvidence (T : TextureMapping) where
  samplingFilteringClosed : T.samplingFiltering
  mipmappingClosed : T.mipmapping
  textureCoordinateGenerationClosed : T.textureCoordinateGeneration
  textureAtlasClosed : T.textureAtlas

theorem texture_mapping_closed_from_evidence (T : TextureMapping) (E : TextureMappingEvidence T) :
    TextureMappingClosed T := by
  exact And.intro E.samplingFilteringClosed
    (And.intro E.mipmappingClosed
      (And.intro E.textureCoordinateGenerationClosed E.textureAtlasClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse
