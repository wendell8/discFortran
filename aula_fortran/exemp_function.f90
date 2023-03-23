!!! Posso colocar a função aqui e não esquecer de declará-la no programa 

program teste
    Real:: expcos
    real:: x, y

    write(*,*) 'Escreva o valor de X:'
    read(*,*) x

    y = expcos(x)

    write(*,*) 'Valor da função:', y

    contains
    !!! Posso colocar a função que eu quiser aqui e 
    !!! não preciso declara a função no programa, nesta ocasião
    !!!

end program

