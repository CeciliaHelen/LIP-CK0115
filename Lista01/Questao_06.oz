/*Questão 06*/
%item a

declare
fun {OpList Op L1 L2}
   case L1 of H1|T1 then
      case L2 of H2|T2 then {Op H1 H2}|{OpList Op T1 T2} end
   else nil end
end

declare
fun {ShiftLeft L}
    case L of H|T then H|{ShiftLeft T}
    else [0] end
end

declare
fun {ShiftRight L} 0|L end

declare
fun {GenericPascal Op N}
   if N==1 then [1]
   else L in
      L = {GenericPascal Op N-1}
      {OpList Op{ShiftLeft L} {ShiftRight L}}
   end
end

declare
fun {Subtraction X Y}
   X-Y
end

declare
fun {Multiplication X Y}
   X*Y
end

declare
fun {Add X Y}
   X+Y
end

declare
fun {Mul1 X Y}
   {X+Y}*{Y+1}
end

declare
fun {GenericPascal2 Op N}
   if N==1 then [1]
   else {GenericPascal Op N}|{GenericPascal2 Op N-1}
   end
end

{Browse {GenericPascal2 Subtraction 5}}
{Browse {GenericPascal2 Multiplication 5}}
{Browse {GenericPascal2 Add 5}}
{Browse {GenericPascal2 Mul1 5}}

{Browse {GenericPascal Mul1 10}}

%item b
for I in 1..10 do {Browse{GenericPascal Subtraction I}} end
for I in 1..10 do {Browse{GenericPascal Multiplication I}} end
for I in 1..10 do {Browse{GenericPascal Add I}} end
