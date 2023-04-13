! Universidade Federal do Pará
! Programa de Pós-Graduação em Geofísica
! Período 2023.1
! Exercícios de Fortran - Lista 01
! Docente: Cícero Régis
! Discente: Louis Tabosa

! QUESTÃO 04

Program km_por_litro
Implicit None

Real::km, l, somaKM, somaLitro
Integer::N

N=1
somaKM = 0
somaLitro = 0

Write(*,*) '------------------------------'
Write(*,*) 'Cálculo de Km/l para N trechos'
Write(*,*) '------------------------------'

DO
	Write(*,*)'                                                                                        '
	Write(*,*)'Informe quantos litros de combustível foram consumidos no trecho:  (digite -1 para sair)'
	
	Read(*,*) l
	
	if (l == -1) then
		if (somaLitro == 0) then
			Write(*,*)'Sem informações de consumo. Encerrando a aplicação...'
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
	
	

