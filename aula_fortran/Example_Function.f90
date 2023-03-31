Program teste
implicit none
!Real:: expcos !Só precisa declarar aqui se NÃO utilizar o "Cotains". 
real:: x,y

write(*,*) "x:"
read(*,*) x

y = expcos(x)

write(*,*) 'Valor da Função:',y


Contains
!------------------------------------
Real Function expcos(x)
implicit none
Real, intent(in):: x

expcos = exp(-x**2) * cos(10*x)

End Function expcos
!------------------------------------



End Program
