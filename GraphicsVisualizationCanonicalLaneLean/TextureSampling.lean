import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure TextureSampling where
  textureCoordinate : Type
  filterMode : Type
  wrapMode : Type
  sampledColor : Type
  textureCoordinateValid : Prop
  filterModeCorrect : Prop
  wrapModeCorrect : Prop
  sampledColorAccurate : Prop

structure TextureSamplingEvidence (T : TextureSampling) where
  textureCoordinateValidClosed : T.textureCoordinateValid
  filterModeCorrectClosed : T.filterModeCorrect
  wrapModeCorrectClosed : T.wrapModeCorrect
  sampledColorAccurateClosed : T.sampledColorAccurate

def TextureSamplingClosed (T : TextureSampling) : Prop :=
  T.textureCoordinateValid ∧ T.filterModeCorrect ∧ 
  T.wrapModeCorrect ∧ T.sampledColorAccurate

theorem texture_sampling_closed_from_evidence (T : TextureSampling) 
    (E : TextureSamplingEvidence T) : TextureSamplingClosed T := by
  exact And.intro E.textureCoordinateValidClosed
    (And.intro E.filterModeCorrectClosed
      (And.intro E.wrapModeCorrectClosed E.sampledColorAccurateClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse