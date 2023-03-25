program main
    implicit none
    
    integer :: x1, x2, y1, y2
    real :: area, a, b, c, d
  
    print*, "Entre com as coordenadas x e y do primeiro ponto:"
    read*, x1, y1
  
    print*, "Entre com as coordenadas x e y do segundo ponto:"
    read*, x2, y2
  
    d = sqrt(REAL((x2 - x1)**2 + (y2 - y1)**2))
    print*, "A distância entre os pontos é: ", d
  
    print*, "Entre com as medidas dos lados do triângulo:"
    read*, a, b, c
  
    area = triangle_area(a, b, c)
  
    if (area < 0) then
      print*, "As medidas dos lados não formam um triângulo válido!"
    else
      print*, "A área do triângulo é: ", area
    endif
  
  contains
  
    function triangle_area(a, b, c) result(area)
      implicit none
      real, intent(in) :: a, b, c
      real :: s, area, discriminant
  
      if (a + b <= c .or. a + c <= b .or. b + c <= a) then
        area = -1
      else
        s = (a + b + c) / 2
        discriminant = s * (s - a) * (s - b) * (s - c)
        if (discriminant < 0) then
          area = -1
        else
          area = sqrt(discriminant)
        endif
      endif
    end function triangle_area
  
  end program main 