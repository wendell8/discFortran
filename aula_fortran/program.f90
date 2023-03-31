Program Fahrenheit_Celsius
! comentário. 

Implicit none ! Obrigatório para essa disciplina.
Real:: F
Real:: C

Write(*,*) 'Qual a temperaura em F?'
Read(*,*) F

C = 5. * (F - 32.) / 9.

write(*,*) 'Temperatura em Celsius:', C

End Program
