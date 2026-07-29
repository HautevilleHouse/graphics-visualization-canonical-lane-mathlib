import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure ShadowMapping where
  shadowMapGeneration : Type
  shadowTest : Type
  shadowFiltering : Type
  shadowBlending : Type
  shadowMapGenerated : Prop
  shadowTestAccurate : Prop
  shadowFilteringCorrect : Prop
  shadowBlendingCorrect : Prop

structure ShadowMappingEvidence (S : ShadowMapping) where
  shadowMapGeneratedClosed : S.shadowMapGenerated
  shadowTestAccurateClosed : S.shadowTestAccurate
  shadowFilteringCorrectClosed : S.shadowFilteringCorrect
  shadowBlendingCorrectClosed : S.shadowBlendingCorrect

def ShadowMappingClosed (S : ShadowMapping) : Prop :=
  S.shadowMapGenerated ∧ S.shadowTestAccurate ∧ 
  S.shadowFilteringCorrect ∧ S.shadowBlendingCorrect

theorem shadow_mapping_closed_from_evidence (S : ShadowMapping) 
    (E : ShadowMappingEvidence S) : ShadowMappingClosed S := by
  exact And.intro E.shadowMapGeneratedClosed
    (And.intro E.shadowTestAccurateClosed
      (And.intro E.shadowFilteringCorrectClosed E.shadowBlendingCorrectClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse