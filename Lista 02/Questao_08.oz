/*Questão 08*/
%item a
%O resultado será o mesmo. Quando BP1 é falso, BP2 não é chamado

%item b

fun {OrElse BP1 BP2}
   if {BP1} then true else {BP2} end
end
%Para BP1 verdadeiro, BP2 não é chamado
%Quando BP1 falso, BP2 é chamado e executado
