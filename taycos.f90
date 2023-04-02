program taylor_cosseno_graus
    
    implicit none
    integer :: i, n
    real :: x_graus, x_radianos, cosseno, termo, fatorial

    ! leitura do valor de x em graus
    print *, 'Digite o valor de x em graus:'
    read *, x_graus

    ! leitura do número de termos da série
    print *, 'Digite o número de termos da série:'
    read *, n

    ! conversão de graus para radianos
    x_radianos = x_graus * 3.14159265358979323846 / 180.0

    ! cálculo da série de Taylor
    cosseno = 1.0
    termo = 1.0
    fatorial = 1.0


    do i = 1, n

        termo = -termo * x_radianos * x_radianos / ((2*i-1)*(2*i))
        cosseno = cosseno + termo
        ! pra saber os valores do termos
        print *, 'numero do termo:',termo

    end do

    ! impressão do resultado
    print *, 'cos(', x_graus, ') = ', cosseno


end program taylor_cosseno_graus
