/*Questão 03*/
%parte 1 - erro
declare
fun {Test X}
   if X then 1 end
end

try
   {Browse {Test false}}
catch X then
   {Browse X}
end

%parte 2
declare Y
Y = if false then 1 end
Y = if true then 1 end

%parte 3 - procedimento
declare
proc {Test X ?Y}
   if X then Y = X end
end
