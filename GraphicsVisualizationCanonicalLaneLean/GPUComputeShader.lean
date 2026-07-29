import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphicsVisualizationCanonicalLaneLean

structure GPUComputeShaderPackage where
  kernelDispatch : Prop
  sharedMemory : Prop
  threadSync : Prop
  memoryCoalescing : Prop

structure GPUComputeShaderEvidence (G : GPUComputeShaderPackage) where
  kernelDispatchClosed : G.kernelDispatch
  sharedMemoryClosed : G.sharedMemory
  threadSyncClosed : G.threadSync
  memoryCoalescingClosed : G.memoryCoalescing

def GPUComputeShaderClosed (G : GPUComputeShaderPackage) : Prop :=
  G.kernelDispatch ∧ G.sharedMemory ∧ G.threadSync ∧ G.memoryCoalescing

theorem gpu_compute_shader_closed_from_evidence (G : GPUComputeShaderPackage)
    (E : GPUComputeShaderEvidence G) : GPUComputeShaderClosed G := by
  exact And.intro E.kernelDispatchClosed (And.intro E.sharedMemoryClosed (And.intro E.threadSyncClosed E.memoryCoalescingClosed))

end GraphicsVisualizationCanonicalLaneLean
end HautevilleHouse