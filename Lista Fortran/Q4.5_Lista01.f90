! Universidade Federal do Pará
! Programa de Pós-Graduação em Geofísica
! Período 2023.1
! Exercícios de Fortran - Lista 01
! Docente: Cícero Régis
! Discente: Louis Tabosa

! QUESTÃO 4.5 - Ângulos


!----------------------------------------------------------------!
Subroutine rad2GMS(radianos, graus, minutos, segundos)
Implicit None

Real, intent(in):: radianos
Integer, intent(out):: graus, minutos
Real, intent(out):: segundos
Real, parameter:: Pi = 3.14159265359
Real::aux1,aux2

aux1 = radianos*180/Pi
graus = INT(aux1)

aux2 = (aux1-graus)*60
minutos = Int(aux2)

segundos = (aux2-minutos)*60

End Subroutine

!----------------------------------------------------------------!

Program angles
Implicit None

Real::radianos, segundos
Integer::graus, minutos

Write(*,*) '--------------------------------------------------------------------------------'
Write(*,*) 'Programa para converter ângulos em radianos para o formato "Grau,Minuto,Segundo"'
Write(*,*) '--------------------------------------------------------------------------------'

Write(*,*) 'Informe o valor em radianos:'
Read(*,*) radianos

CALL rad2GMS(radianos, graus, minutos, segundos)

Write(*,*) '------'
Write(*,*) radianos, 'rad =', graus, 'graus,',minutos,'minutos e',segundos,'segundos.'
Write(*,*) '------'

End Program


