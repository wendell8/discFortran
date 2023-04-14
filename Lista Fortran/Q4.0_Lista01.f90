!##### Informação do Aluno ########################

! Universidade Federal do Pará
! Programa de Pós-Graduação em Geofísica
! Processamento e interpretação de dados Geofísico
! Período 2023.1
! Docente: Cícero Régis
! Discente: Wendell Nobre

!##### Informação da Disciplina ########################

! Exercícios de Fortran - Lista 01
! QUESTÃO 04

Program km_por_litro
Implicit None

Real::km, l, somaKM, somaLitro
Integer::N

N=1
somaKM = 0
somaLitro = 0

Write(*,*) '------------------------------'
Write(*,*) 'Cálculo do conssumo para os trechos'
Write(*,*) '                                   '
Write(*,*) 'Este progrma calcula o cosumo de combustivel para N trechos.'
Write(*,*) 'Note, que para encerrar a introdução das informações basta digita: -1'
Write(*,*) '                                    '
Write(*,*) '------------------------------'

DO
	Write(*,*)'****************************************************************************************'
	Write(*,*)'Informe quantos litros de combustível foram consumidos no trecho:  (digite -1 para sair)'
	Write(*,*)'****************************************************************************************'
	
	Read(*,*) l
	
	if (l == -1) then
		if (somaLitro == 0) then
			Write(*,*)'Nada foi informado, programa sendo fechado!'
			stop 
			
		else
		    Write(*,*) '-----------------------------------------------'
			Write(*,*) 'Para todo o percurso:', somaKM/somaLitro, 'km/l'
			Write(*,*) '-----------------------------------------------'
	    	stop 
	    	
	    end if
	else
		Write(*,*)'                                                                         '
		Write(*,*)'Quantos quilômetros foram percorridos com essa quantidade de combustível?'
		Read(*,*) km
	end if
	
	Write(*,*) '-----------------------------------------------'
	Write(*,*)'No trecho',N,':',km/l,'km/l'
	Write(*,*) '-----------------------------------------------'

somaKM = somaKM + km
somaLitro = somaLitro + l
N = N + 1

End Do

End Program
	
	

