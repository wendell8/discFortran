program taylor_seno_graus
    implicit none
    integer :: i, n
    real :: x_graus, x_radianos, seno, termo, fatorial

    ! leitura do valor de x em graus
    print *, 'Digite o valor de x em graus:'
    read *, x_graus

    ! leitura do número de termos da série
    print *, 'Digite o número de termos da série:'
    read *, n

    ! conversão de graus para radianos
    x_radianos = x_graus * 3.14159265358979323846 / 180.0

    ! cálculo da série de Taylor
    seno = 0.0
    termo = x_radianos
    fatorial = 1.0

    do i = 1, n
        seno = seno + termo / fatorial
        termo = -termo * x_radianos * x_radianos
        
        fatorial = fatorial * (2*i) * (2*i + 1)
        ! pra saber os valores do termos
        print *, 'numero do termo:',termo
    end do

    ! impressão do resultado
    print *, 'sen(', x_graus, ') = ', seno
end program taylor_seno_graus
