program sin_x_over_x
    implicit none
    
    real :: x, sinc
  
    do
        write(*,*) 'Entre com o valor de x:'
        read(*,*) x
        
        if (x /= 0.) then
            sinc = sin(x) / x
            write(*,*) 'The value for f(x) = ', sinc
            exit
        else
            !sinc = 1.
            write(*,*) 'Choose another value for x!'
        endif
        
        

    end do
    
end program sin_x_over_x

!
!
!
!
!
!