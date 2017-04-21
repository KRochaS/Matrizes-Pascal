/* Ler 9 números inteiros para preencher uma matriz D 3x3, ou seja, com 3 linhas e 3 colunas
(considere que não serão informados valores duplicados). A seguir, ler um número inteiro X e escrever
uma mensagem indicando se o valor de X existe ou não na matriz D. */

program exerc1matriz;
uses crt;

var d: array [1..3, 1..3] of integer;
var i, j, x, teste: integer;

begin
    teste:=0;
     writeln('Digite os valores da Matriz D: ');
     for i:=1 to 3 do
         for j:=1 to 3 do
             begin
                  write('[',i,',',j,']: ');
                  readln(d[i,j]);
             end;
          ;
      ;

      writeln('Digite um numero inteiro: ');
      readln(x);

      for i:=1 to 3 do
          for j:=1 to 3 do
                   if(x=d[i,j]) then
                          teste:=1 //flag
                    ;
            ;
        ;

        if teste=1 then
              writeln('O valor de X existe na matriz D')
        else
             writeln('O valoe de X nao existe na matriz D')
        ;


    readln;
end.
