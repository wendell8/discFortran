! Universidade Federal do Pará
! Programa de Pós-Graduação em Geofísica
! Período 2023.1
! Exercícios de Fortran - Lista 01
! Docente: Cícero Régis
! Discente: Louis Tabosa

! QUESTÃO 08b

Subroutine TestaPrimo(x,resultado)
Implicit None

Integer, intent(in)::x
Logical, intent(out)::resultado
Integer::aux, N

aux = ceiling(sqrt(REAL(x)))

Do N = 2, aux

	If(mod(x,N) == 0) then
		resultado = .False.	
		exit
	else
		resultado = .True.
	End If
	
End Do

End Subroutine

!##################################################

Program primos10k
Implicit none

Integer::N,i,j
logical::resultado

N = 10000
j = 2

Write(*,*)1,'º   número   primo: ',2

Do i = 1,N

	CALL TestaPrimo(i,resultado)
	If (resultado .eqv. .True.) then
		Write(*,*)j,'º   número   primo: ',i
		j = j + 1
	Else
	End If
	
End Do

End Program
	
		
