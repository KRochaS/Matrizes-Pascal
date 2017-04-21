// Ler 9 números inteiros para preencher uma matriz D 3x3, ou seja, com 3 linhas e 3 colunas
// (considere que não serão informados valores duplicados). A seguir, ler um número inteiro X e escrever
// uma mensagem indicando se o valor de X existe ou não na matriz D. */

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


//  Ler uma matriz SOMA 4x4, calcular e escrever as seguintes somas:
//  a) da linha 3
//  b) da coluna 2
//  c) de todos os elementos da matriz 


program exerc2_matriz;
uses crt;

var soma: array [1..4, 1..4] of integer;
var i, j, somarl, somarc, somartot: integer;

begin
     somarl:=0;
     somarc:=0;
     somartot:=0;

     writeln('Digite os valores da Matriz Soma: ');
     for i:=1 to 4 do
         for j:=1 to 4 do
             begin
                  write('[',i,',',j,']: ');
                  readln(soma[i,j]);
              end;
          ;
      ;

      for i:=1 to 4 do
          for j:=1 to 4 do
               if i=3 then
                  somarl:=somarl+soma[i,j];
                ;
           ;
      ;

      for i:=1 to 4 do
          for j:=1 to 4 do
                if j=2 then
                   somarc:=somarc+soma[i,j];
                 ;
          ;
      ;

      for i:=1 to 4 do
          for j:=1 to 4 do
                somartot:=somartot+soma[i,j];
             ;
       ;

       writeln('A soma da linha 3: ', somarl);
       writeln('A soma da coluna 2: ', somarc);
       writeln('A soma de todos os elementos da matriz: ', somartot);

       readln;
end.


//  Ler uma matriz G 3x3 e criar 2 vetores, SL e SC, de 3 elementos cada, contendo respectivamente as
// somas das linhas e das colunas de G. Escrever os vetores criados.

program exerc3_matriz;
uses crt;

var g: array [1..3, 1..3] of integer;
var sl, sc: array [1..3] of integer;
var i, j, a: integer;

begin

     writeln('Digite os valores da Matriz G: ');
     for i:=1 to 3 do
         for j:=1 to 3 do
             begin
                  write('[',i,',',j,']: ');
                  readln(g[i,j]);
             end;
         ;
     ;

    for i:=1 to 3 do
        for j:=1 to 3 do
            begin
                 sl[i]:=sl[i]+g[i,j];
                 sc[j]:=sc[j]+g[i,j];
            end;
        ;
    ;
    writeln('Soma das linhas: ');
    for a:=1 to 3 do
        writeln(sl[a]);
    ;

    writeln('Soma das colunas: ');
    for a:=1 to 3 do
        writeln(sc[a]);
    ;

    readln;

end.
