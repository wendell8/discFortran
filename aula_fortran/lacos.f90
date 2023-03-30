program media
    implicit none
    real:: soma, x,md
    integer:: i, n

    soma = 0. ! devo coloacar o . para garantir que o zero seja 0 mesmo, e não receba valores remanescentes
    ! soma foi atribuido à zero para que 



    write(*,*) "Digite o valor de quantas celulas da media"
    read(*,*) n


    do i = 1,n
        write(*,*) 'Digite o valor da medida',i, ':'
        read(*,*) x
        soma = soma + x
    end do

    md = soma/n
write(*,*) 'media é igual a:',md
end program media