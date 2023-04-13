! Universidade Federal do Pará
! Programa de Pós-Graduação em Geofísica
! Período 2023.1
! Exercícios de Fortran - Lista 01
! Docente: Cícero Régis
! Discente: Louis Tabosa

! QUESTÃO 06a

!!------------- Função para verificar se os lados informados formam um triângulo --------------------!!

Logical Function f1_is3angle(l1, l2, l3)
Implicit None
Real, Intent(in)::l1,l2,l3

IF (l1 + l2 > l3 .AND. l1 + l3 > l2 .AND. l2 + l3 > l1) THEN
    f1_is3angle = .TRUE.
ELSE
    f1_is3angle = .FALSE.
END IF

End Function f1_is3angle

!------------------------------------------------------------------------------------------!

PROGRAM Test_3angle
Implicit None
Real :: a, b, c
Logical :: f1_is3angle, teste1, f2_isR3angle, teste2

WRITE(*,*) 'Informe o comprimento de cada um dos três lados do triângulo (a,b e c):'
READ(*,*) a, b, c

teste1 = f1_is3angle(a,b,c)

if (teste1 .eqv. .TRUE.) then
    Write(*,*) '--------------------------------------'
    Write(*,*) 'Esses lados podem formar um triângulo!'
    Write(*,*) '--------------------------------------'

else
    Write(*,*) '-----------------------------------------'
    Write(*,*)'Esses lados não podem formar um triângulo.'
    Write(*,*) '-----------------------------------------'
end if


END PROGRAM Test_3angle
