export LineShape

abstract type LineShape end

(ls::LineShape)(x::Real) = evaluate(ls, x)


