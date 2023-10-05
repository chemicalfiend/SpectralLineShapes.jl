export Dirac,
       evaluate


struct Dirac <: LineShape
    xdata :: Vector{Float64}
    ydata :: Vector{Float64}
end

function evaluate(ls::Dirac, x::Real)
    for (i, xp) in enumerate(ls.xdata)
        if x == xp
            return ls.ydata[i]
        end
    end
    return 0.0
end

