real function chapeu(x,a)
implicit none
real,intent(in):: x,a
if(x<a) then
    chapeu = 0.
else if (x<0) then
    chapeu = (a-x)/a
else if (x<a)then
    chapeu = (a-x)/a 
else
    chapeu = 0.
end if
end function chapeu