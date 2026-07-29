import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure RayTracingCore where
  rayGeneration : Type
  rayIntersection : Type
  shading : Type
  accumulation : Type
  rayGenerationValid : Prop
  rayIntersectionAccurate : Prop
  shadingCorrect : Prop
  accumulationConvergent : Prop

structure RayTracingCoreEvidence (R : RayTracingCore) where
  rayGenerationValidClosed : R.rayGenerationValid
  rayIntersectionAccurateClosed : R.rayIntersectionAccurate
  shadingCorrectClosed : R.shadingCorrect
  accumulationConvergentClosed : R.accumulationConvergent

def RayTracingCoreClosed (R : RayTracingCore) : Prop :=
  R.rayGenerationValid ∧ R.rayIntersectionAccurate ∧ 
  R.shadingCorrect ∧ R.accumulationConvergent

theorem ray_tracing_core_closed_from_evidence (R : RayTracingCore) 
    (E : RayTracingCoreEvidence R) : RayTracingCoreClosed R := by
  exact And.intro E.rayGenerationValidClosed
    (And.intro E.rayIntersectionAccurateClosed
      (And.intro E.shadingCorrectClosed E.accumulationConvergentClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse