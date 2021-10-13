/*Questão 05*/

declare
fun {SumList L}
case L of X|L1 then X+{SumList L1}
else 0 end
end

declare
fun lazy{Ints N}
N|{Ints N+1}
end

{Browse {SumList {Ints 0}}}
