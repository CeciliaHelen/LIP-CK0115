/*Questão 08*/

declare
local Acc in
   Acc={NewCell 0}
   fun {Accumulate N}
      Acc:=@Acc+N
      @Acc
   end
end

{Browse{Acumulate 5}}
{Browse{Accumulate 100}}
{Browse{Accumulate 45}}
