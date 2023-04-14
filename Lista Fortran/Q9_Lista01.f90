!##### Informação do Aluno ########################

! Universidade Federal do Pará
! Programa de Pós-Graduação em Geofísica
! Processamento e interpretação de dados Geofísico
! Período 2023.1
! Docente: Cícero Régis
! Discente: Wendell Nobre

!##### Informação da Disciplina ########################

! Exercícios de Fortran - Lista 01
! QUESTÃO 09 

Subroutine quad(A,B,C,Nr,R1,R2)
Implicit None

! Para o cálculo das raízes da equação quadrática na forma Ax²+Bx+c=0

Real, intent(in)::A,B,C
Real, intent(out)::R1,R2
Integer, intent(out)::Nr
Real::Delta

Delta = B**2 - 4*A*C

if (Delta < 0) then
	Nr = 0

else if (Delta > 0) then
	Nr = 2
	R1 = (-B - sqrt(Delta))/(2*A)
	R2 = (-B + sqrt(Delta))/(2*A)
	
else
	Nr = 1
	R1 = -B / (2*A)
	R2 = R1
	
end if

end Subroutine

!#########################################################################

Program Test
Implicit None

Real, parameter:: g = 9.81
Real::h,teta,v0,t,x,A,B,C
Integer::N
Real::R1,R2

Write(*,*)'---------------------------------------------------------------'
Write(*,*)'Trajetória parabólica: tempo e distância até o ponto de impacto'
Write(*,*)'---------------------------------------------------------------'

Write(*,*)'Informe a altura (m) do ponto de lançamento:'
Read(*,*) h

Write(*,*)'Informe o ângulo com a horizontal da direção de lançamento (entre 0 e 90°):'
Read(*,*) teta

Write(*,*)'Informe a velocidade (m/s) inicial de lançamento:'
Read(*,*) v0

Do
	if (teta > 90 .OR. teta < 0) then
		Write(*,*)'Ângulo inválido. Informe o ângulo entre 0 e 90° para o lançamento:'
		Read(*,*) teta
	else
	exit
	End If
	
End Do

A = g
B = -2*v0*sind(teta)
C = -2*h

CALL quad(A,B,C,N,R1,R2)

if (N == 1) then
	t = R1

else if (N == 2) then
	t = R2

else
	write(*,*)'--------------------'
	write(*,*) 'Não há solução real para os valores informados.'
	write(*,*)'--------------------'
	stop
	
end if

Write(*,*)'------------------------------------------------------------------------------'
Write(*,*)'O tempo até o impacto:', t, 'segundos.'

x = v0*cosd(teta)*t

Write(*,*)'A distância horizontal percorrida:', x,' metros.'
Write(*,*)'------------------------------------------------------------------------------'


End Program
