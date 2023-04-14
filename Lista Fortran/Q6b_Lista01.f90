!##### Informação do Aluno ########################

! Universidade Federal do Pará
! Programa de Pós-Graduação em Geofísica
! Processamento e interpretação de dados Geofísico
! Período 2023.1
! Docente: Cícero Régis
! Discente: Wendell Nobre

!##### Informação da Disciplina ########################

! Exercícios de Fortran - Lista 01

! QUESTÃO 06b

!!------------- Função para verificar se os lados informados formam um triângulo --------------------!!

Logical Function f1_is3angle(l1, l2, l3)
Implicit None
Integer, Intent(in)::l1,l2,l3

IF (l1 + l2 > l3 .AND. l1 + l3 > l2 .AND. l2 + l3 > l1) THEN
    f1_is3angle = .TRUE.
ELSE
    f1_is3angle = .FALSE.
END IF

End Function f1_is3angle

!!-------------Se for um triângulo, verifica se é um triângulo retângulo-----------------------------!!

Logical Function f2_isR3angle(l1,l2,l3)
Implicit None
Integer, Intent(in)::l1,l2,l3
Integer::h, c1,c2
if(l1 > l2 .AND. l1 > l3) then
    h  = l1
    c1 = l2
    c2 = l3
else if (l2 > l1 .AND. l2 > l3) then
    h  = l2
    c1 = l1
    c2 = l3
else 
    h  = l3
    c1 = l1
    c2 = l2
end if

if (h**2 == c1**2 + c2**2) then  !!Cuidado. Aqui a comparação funciona pois são inteiros. Não faça isso com reais.
   f2_isR3angle = .TRUE.
else
   f2_isR3angle = .FALSE.
end if

End Function f2_isR3angle

!!---------------------------------------------------------------------------------------------------!!

PROGRAM Test_R3angle
Implicit None
Integer :: a, b, c
Logical :: f1_is3angle, teste1, f2_isR3angle, teste2

WRITE(*,*) 'Informe o comprimento de cada um dos três lados do triângulo (a,b e c):'
READ(*,*) a, b, c

teste1 = f1_is3angle(a,b,c)

if (teste1 .eqv. .TRUE.) then
    Write(*,*) '--------------------------------------'
    Write(*,*) 'Esses lados podem formar um triângulo!'
    teste2 = f2_isR3angle(a,b,c)
    if (teste2 .eqv. .TRUE.) then
        Write(*,*)'E um triângulo retângulo.'
        Write(*,*) '--------------------------------------'
    else
        Write(*,*)'Mas NÃO um triângulo retângulo.'
        Write(*,*) '--------------------------------------'
    end if
else
    Write(*,*) '-----------------------------------------'
    Write(*,*)'Esses lados não podem formar um triângulo.'
    Write(*,*) '-----------------------------------------'
end if


END PROGRAM Test_R3angle
