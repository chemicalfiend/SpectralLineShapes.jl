export Gaussian,
       evaluate


struct Gaussian <: LineShape
    xdata :: Vector{Float64}
    ydata :: Vector{Float64}
    σ::Real
end

Gaussian(xdata::Vector{Float64}, ydata::Vector{Float64}) = Gaussian(xdata, ydata, 0.5)

function evaluate(ls::Gaussian, x::Real)
    s = 0.0
    for (i, xp) in enumerate(ls.xdata)
        s += ls.ydata[i]*exp(-((x-xp)/ls.σ)^2)
    end
    return s
end

