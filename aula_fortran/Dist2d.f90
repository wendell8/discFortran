Program Dist2D
! programa para o cálculo da distância entre dois pontos no plano

Implicit none
Real:: x1, y1, x2, y2 !variáveis para as coordenadas dos pontos P1 e P2 
Real:: D              !variável para atribuir a distância calculada

Write(*,*) 'Informe as coordenadas X e Y (nessa ordem) do primeiro ponto (P1).'
Read(*,*) x1, y1

Write(*,*) 'Informe as coordenadas X e Y (nessa ordem) do segundo ponto (P2).'
Read(*,*) x2, y2

D = sqrt(((x2-x1)**2) + ((y2-y1)**2))

write(*,*) 'A distância entre os pontos P1 e P2 informados é: ', D, 'unidade(s).'


End Program
