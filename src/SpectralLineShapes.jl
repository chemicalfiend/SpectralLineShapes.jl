module SpectralLineShapes


abstract type LineShape end

include("types.jl")
include("dirac.jl")
include("gaussian.jl")
include("lorentzian.jl")

end
