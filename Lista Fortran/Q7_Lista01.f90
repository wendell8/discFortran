!##### Informação do Aluno ########################

! Universidade Federal do Pará
! Programa de Pós-Graduação em Geofísica
! Processamento e interpretação de dados Geofísico
! Período 2023.1
! Docente: Cícero Régis
! Discente: Wendell Nobre

!##### Informação da Disciplina ########################

! Exercícios de Fortran - Lista 01
! QUESTÃO 07

Program TrioPitagorico 
Implicit None

Integer::a,b,c,N,soma_catetos
!Real:: soma_catetos

N=1

Do a = 1,500
    Do b = a+1,500
    	Do c = b+1,500

    		soma_catetos = a**2 + b**2
    		
    		If (c <=500 .AND. c**2 == soma_catetos) then
    			Write(*,*)'Trio Pitagórico',N,':',a,b,c
    			N = N + 1
    		else
    		end if
    		 		
    	End Do
    End Do
End Do

End Program
