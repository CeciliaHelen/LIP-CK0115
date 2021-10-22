/*Questão 09*/
%item a

%funções sem expansão
declare
fun {Sum1 N}
   if N==0 then 0 else N+{Sum1 N-1} end
end
fun {Sum2 N S}
   if N==0 then S else {Sum2 N-1 N+S} end
end

%Funções com expansão
declare
fun {Sum1 N}
   if N==0 then 0
   else Mid in
      Mid = {Sum1 N-1}
      N + Mid
   end
end
fun {Sum2 N S}
   if N==0 then S
   else Mid1 Mid2 in
      Mid1 = N-1
      Mid2 = N+S
      {Sum2 Mid1 Mid2}
   end
end
{Browse{Sum1 10}}
{Browse{Sum2 10 0}}

%item b



%item c
%ambos não chegaram a rodar, possívelmente estouraram a pilha na execução
{Browse{Sum1 100000000}}
{Browse{Sum2 100000000 0}}
