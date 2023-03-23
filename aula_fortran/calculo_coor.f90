program coordenada
    implicit none
    real:: c, f, g, h, d

    write(*,*) 'Qual o valor de X1 e X2, respectivamente?'
    read(*,*)c,f
    write(*,*) 'Qual o valor de Y1 e Y2, respectivamente?'
    read(*,*)g,h

    d = sqrt(((f-c)**2)+((h-g)**2))


    write(*,*)'A distância entre os pontos é:', d ,'m'
    


end program coordenada