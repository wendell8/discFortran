program fahrenhit_to_celsius
    implicit none
    real:: c,f

    write(*,*) 'Qual a temperatura em Fahrenhit?'
    read(*,*)f
    c = 5.*(f-32.)/9.

    write(*,*)'Temperatura em Sesius', c
    


end program fahrenhit_to_celsius
