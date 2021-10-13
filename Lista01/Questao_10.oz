/*Questão 10*/
%Sem delay

declare
C = {NewCell 0}
thread I in
  I = @C
  C:=I+1
end

thread J in
  J = @C
  C:=J+1
end

{Browse @C}

%Com delay

declare
C = {NewCell 0}
thread I in
  {Delay 1000000}
  I = @C
  C:=I+1
end

thread J in
  J = @C
  C:=J+1
end

{Browse @C}

%Estrutura 1.16 com delay e apenas número 1
declare
C={NewCell 0}
L={NewLock}
thread I in
   lock L then I in
      {Delay 1000000}
      I=@C
      C:=I+1
   end
end

thread
   lock L then J in
      J=@C
      C:=J+1
   end
end

{Browse @C}
