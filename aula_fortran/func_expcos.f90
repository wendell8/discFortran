Real Function expcos(x)
implicit none
Real, intent(in):: x

expcos = exp(-x**2) * cos(10*x)

End Function expcos
