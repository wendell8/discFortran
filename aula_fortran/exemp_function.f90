Real function expcos(x)
implicit none
Real, intent(in):: x

expcos = exp(-x**2)*cos(10*x)

end function expcos

program teste
    Real:: expcos
    real:: x, y

    write(*,*) 'X:'
    read(*,*) X

    y = expcos(x)

    write(*,*) 'Valor da função:', y

end program

