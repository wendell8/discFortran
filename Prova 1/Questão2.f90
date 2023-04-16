!##### Informação do Aluno ########################

! Universidade Federal do Pará
! Programa de Pós-Graduação em Geofísica
! Processamento e interpretação de dados Geofísico
! Período 2023.1
! Docente: Cícero Régis
! Discente: Sebastião Wendell Nobres Moura

!##### Prova 1 ########################

program razao_aurea
    implicit none
    integer :: i
    real :: a, b, c, razao, R_A

!*********************************************************************************
    Write(*,*) '----------------------------------------------------------------'
    Write(*,*) '                           Razão Aurea                          '
    Write(*,*) '                                                                '
    Write(*,*) 'Este progrma irá calcular a razão entre os indices da sequencia '
    Write(*,*) '             fibonacci até o resultado ser                      '
    Write(*,*) '                                                                '
    Write(*,*) '----------------------------------------------------------------'

!*********************************************************************************

     ! Entrada dos dois valores iniciais
    write(*,*) "Digite os dois primeiros termos:"
    read(*,*) a, b

!*********************************************************************************

    R_A = (1.0 + sqrt(5.0)) / 2.0 ! Calcular a Razão Áurea

    write(*,*) "A sequência de Fibonacci é:"
    
    ! Exibir os dois primeiros valores
    write(*,*) 1, int(a)
    write(*,*) 2, int(b)

!*********************************************************************************

! Este laço, irá fazer o loop até encontrar a razão Áurea, limitado por 21 itereções
! Para assim provar a repetição do valor da razão.

    do i=3,21 
       c = a + b
       razao = c / b
       
       !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
       write(*,*) i, int(c), razao !Exibir os próximos valores e suas razões
       !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

       !if (abs(razao - R_A) < 0.000001) exit  ! Este if assegura que a sequencia saia do loop 
                                               !na 19a sequência, caso o usuário queira.

       a = b
       b = c

    end do
    
    write(*,*)'                                                                      '
    write(*,*)'A partir da 19a iteração, os valores superiores apresentam repetições!'
    write(*,*)'                                                                      '

end program razao_aurea