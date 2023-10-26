export Lorentzian,
       evaluate


struct Lorentzian <: LineShape
    xdata :: Vector{Float64}
    ydata :: Vector{Float64}
    γ::Real
end

Lorentzian(xdata::Vector{Float64}, ydata::Vector{Float64}) = Gaussian(xdata, ydata, 0.1, 0.1)

function evaluate(ls::Lorentzian, x::Real)
    s = 0.0
    for (i, xp) in enumerate(ls.xdata)
        s += ls.ydata[i] * ls.γ * ls.xdata[i] / ((ls.γ)^2 + (x - ls.xdata[i])^2)
    end
    return s
end

