/*Questão 04*/
%item a
%declaração de if por declaração de caso
fun {Q X V1 V2}
   case X
   of true then
      {V1}
   [] false then
      {V2}
   end
end

%item b
%declaração de caso por declaração de if
fun {Q Exp Pattern V1 V2}
   if {Label Exp} \= {Label Pattern} then {V2}
   elseif {Arity Exp} \= {Arity Pattern} then {V2}
   else
      Pattern = Exp
      {V1}
   end
