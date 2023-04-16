!##### Informação do Aluno ########################

! Universidade Federal do Pará
! Programa de Pós-Graduação em Geofísica
! Processamento e interpretação de dados Geofísico
! Período 2023.1
! Docente: Cícero Régis
! Discente: Sebastião Wendell Nobres Moura

!##### Prova 1 ########################

program fibonacci
    implicit none
    integer:: A,B,C
    integer:: N, I

!*********************************************************************************
    Write(*,*) '------------------------------'
    Write(*,*) '                 Sequências de Fibonacci                                          '
    Write(*,*) '                                   '
    Write(*,*) 'Este progrma gera sequências fibonacci a partir de valores informado pelo usuário!'
    Write(*,*) '                                    '
    Write(*,*) '------------------------------'
    Write(*,*) '                                    '

!*********************************************************************************

    write(*,*)'Digite os dois primeiros termos:'
    read(*,*)A,B

    write(*,*)'Digite o número de termos:'
    read(*,*)N

    ! Exibir cabeçalho da tabela
    write(*,*) 'A sequência de Fibonacci é:'

    ! Exibir os dois primeiros valores
    write(*,*) 1, a
    write(*,*) 2, b

    ! Gerar e exibir os próximos valores
    do i=3,n
        c = a + b
        write(*,*) i, c
        a = b
        b = c
     end do

end program fibonacci
  