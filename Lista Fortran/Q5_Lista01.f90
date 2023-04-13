! Universidade Federal do Pará
! Programa de Pós-Graduação em Geofísica
! Período 2023.1
! Exercícios de Fortran - Lista 01
! Docente: Cícero Régis
! Discente: Louis Tabosa

! QUESTÃO 5 - Logaritmo

Real Function LogBaseA(x,a)
Implicit None

Real,intent(in)::x,a

LogBaseA= log10(x)/log10(a)

End Function

!----------------------------------------------------------!

Program CalculaLog
Implicit None

Real::x, a, LogBaseA, valor

Write(*,*)'-------------------------------------------------'
Write(*,*)'Cálculo do logaritmo do número x em base qualquer'
Write(*,*)'-------------------------------------------------'

Write(*,*)'                                                 '
Write(*,*)'Informe o número para o cálculo de seu logaritmo:'
Read(*,*) x

Write(*,*)'                                                 '
Write(*,*)'Em qual base deseja calcular?'
Read(*,*)a

valor = LogBaseA(x,a)
Write(*,*)'-------'
Write(*,*)'O valor do logaritmo de',x,'na base',a,'é:',valor
Write(*,*)'-------'

End Program
