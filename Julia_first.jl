using TensorKit

V = ℂ^2             # type as \bbC<TAB>, defining a2d complex vec space
W = ComplexSpace(3) # equivalent to ℂ^3, 3d complex vec space

# Use rand(...) directly on space objects, note: Tensor(rand, Float64, V) is an old semantics
A = rand(Float64, W ← V) # creates a randomized tensormap mapping W <- V
v = rand(Float64, V) # 

w = A * v

w[1] ≈ A[1,1] * v[1] + A[1,2] * v[2]

λ = rand()
(λ * v) ⊗ w ≈ v ⊗ (λ * w) ≈ λ * (v ⊗ w)

t = rand( Float64, V ⊗ W)
t[] # shorthand for extracting the multi-dimensional array of components