program gravidade
    implicit none
    real:: m,r
    real:: gg
    real, parameter:: G =  6.6743e-11 !constante gravitacional


    write(*,*) 'Qual a massa do planeta em Kg?'
    read(*,*)m
    write(*,*) 'Qual o raio do planeta em Kg?'
    read(*,*)r

    gg = G*(m/r**2)

    write(*,*)'O valor da gravidade é', gg , 'm/s²'
    


end program gravidade