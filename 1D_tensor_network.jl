using TensorKit

# 1. Define physical and virtual spaces
P = ℂ^2  # Physical space (2-level qubit: |0⟩, |1⟩)
V = ℂ^3  # Virtual bond space (dimension D = 3)

# 2. Define local tensors for each site in the chain
A1 = rand(Float64, P ⊗ V)       # Site 1 (Left boundary)
A2 = rand(Float64, P ⊗ V ← V)   # Site 2 (Middle)
A3 = rand(Float64, P ← V)       # Site 3 (Right boundary)

# 3. Contract the network along virtual bonds v1 and v2
@tensor Psi[p1, p2, p3] := A1[p1, v1] * A2[p2, v2, v1] * A3[p3, v2]

