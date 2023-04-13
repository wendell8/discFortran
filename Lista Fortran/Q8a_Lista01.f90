! Universidade Federal do Pará
! Programa de Pós-Graduação em Geofísica
! Período 2023.1
! Exercícios de Fortran - Lista 01
! Docente: Cícero Régis
! Discente: Louis Tabosa

! QUESTÃO 08a

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

!##########################################

Program Teste
Implicit None

Integer::x
Logical::resultado

write(*,*)'Informe um número para testar se é Primo:'
read(*,*) x

If(x == 2) then
	write(*,*)'-----------------------'
	write(*,*)'Esse é um número primo.'
	write(*,*)'-----------------------'
else
	CALL TestaPrimo(x,resultado)
	If(resultado .eqv. .True.) then
		write(*,*)'-----------------------'
		write(*,*)'Esse é um número primo.'
		write(*,*)'-----------------------'
	Else
		write(*,*)'---------------------------'
		write(*,*)'Esse NÃO é um número primo.'
		write(*,*)'---------------------------'
	End If
End If

End Program


