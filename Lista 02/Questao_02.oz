/*Questão 02*/
%N não existindo no meio ambiente na chamada
declare A = 10 B
local MulByN in
   local N in
      N = 3
      proc {MulByN X ?Y}
	 Y = N * X
      end
   end
   {MulByN A B}
   {Browse B} %saída: 30
   {Browse N}%saída: variable N not introduced
end

%N existindono meio ambiente na chamada, mas com valor diferente de 3
declare A = 10 B
local MulByN in
   local N in
      N = 3
      proc {MulByN X ?Y}
	 Y = N * X
      end
   end
   local N in
      N=50
      {MulByN A B}
      {Browse B} %saída: 30
      {Browse N}%saída: 50
   end      
end
