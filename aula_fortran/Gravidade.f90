Program Calculo_gravidade
! programa para o cálculo da gravidade em um planeta esférico 

Implicit none
Real:: gg ! Gravidade calculada ("gg", pois o fortran não diferencia maiúsculas e minúsculas e "G" reservei para a constante)
Real:: M  ! Massa do planeta - informada pelo usuário
Real:: R  ! Raio do planeta - informado pelo usuário
Real, parameter:: G = 6.6743e-11  ! Constante gravitacional
Real, parameter:: gt = 9.82058048

Write(*,*) 'Informe a massa do planeta em kg?'
Read(*,*) M

Write(*,*) 'Informe o raio do planeta em metros'
Read(*,*) R

gg = G * M / (R**2)

write(*,*) 'A gravidade, para o planeta informado é: ', gg, ' m/s²'
write(*,*) 'Isso correponde a', gg/gt, ' vezes a gravidade terrestre.'


End Program
