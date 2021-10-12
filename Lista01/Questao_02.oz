/*Questão 2*/
%item a

declare
fun {Fact N}
   if N==0 then 1 else N*{Fact N-1} end
end

declare
fun {Comb N K}
   {Fact N} div ({Fact K}*{Fact N-K})
end

{Browse{Comb 10 3}}

declare
fun {FastComb N K}
   if K==0 then 1
   else {Comb N K} div {Comb K K}end
end

{Browse{FastComb 10 3}}

%item b
declare
fun {Fact N}
   if N==0 then 1 else N*{Fact N-1}end
end

declare
fun {Comb N K}
   {Fact N} div ({Fact K}*{Fact N-K})
end

declare
fun {FastComb N K}
   if 2*K < N then {Comb N K} else {Comb N N-K} end
end

{Browse{FastComb 10 3}}
