// 1) Ler 9 números inteiros para preencher uma matriz D 3x3, ou seja, com 3 linhas e 3 colunas
// (considere que não serão informados valores duplicados). A seguir, ler um número inteiro X e escrever
// uma mensagem indicando se o valor de X existe ou não na matriz D. */

program exerc1_matriz;
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


// 2) Ler uma matriz SOMA 4x4, calcular e escrever as seguintes somas:
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


//  3) Ler uma matriz G 3x3 e criar 2 vetores, SL e SC, de 3 elementos cada, contendo respectivamente as
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

// 4) Ler duas matrizes, A 4x6 e B 4x6, e criar:
// a) uma matriz S que seja a soma de A e B (A+B)
// b) uma matriz D que seja a diferença de A e B (A-B)
// Escrever as matrizes S e D. 


program exerc4_matriz;
uses crt;

var  a,b,s,d: array [1..4, 1..6] of integer;
var i,j:integer;

begin

     writeln('Digite os numeros para adicionar a Matriz A: ');
     for i:=1 to 4 do
         for j:=1 to 6 do
             begin
                  write('[',i,',',j,']: ');
                  readln(a[i,j]);
              end;
         ;
      ;

      writeln('Digite os numeros para adicionar a Matriz B: ');
      for i:=1 to 4 do
          for j:=1 to 6 do
              begin
                   write('[',i,',',j,']: ');
                   readln(b[i,j]);
               end;

           ;
      ;

      for i:=1 to 4 do
          for j:=1 to 6 do
              s[i,j]:=a[i,j]+b[i,j];
          ;
      ;

      for i:=1 to 4 do
          for j:=1 to 6 do
              d[i,j]:=a[i,j]-b[i,j];
          ;
     ;

     writeln('Matriz S (A+B): ');
     for i:=1  to 4 do
         begin
              writeln;
              for j:=1 to 6 do
                  write(s[i,j], ' ');
              ;
          end;
     ;

     writeln;
     writeln;

     writeln('Matriz D (A-B): ');
     for i:=1 to 4 do
         begin
              writeln;
              for j:=1 to 6 do
                  write(d[i,j], ' ');
              ;
         end;
     ;

     readln;
end.


 // 5) Ler uma matriz 4x4 de números inteiros, multiplicar os elementos da diagonal principal por um
 //    número inteiro também lido e escrever a matriz resultante. 
 
 program exerc5_matriz;
uses crt;

var m: array [1..4, 1..4] of integer;
var i, j, n: integer;

begin

     writeln('Digite os valores da Matriz: ');
     for i:=1 to 4 do
         for j:=1 to 4 do
                  begin
                       write('[',i,',',j,']: ');
                       readln(m[i,j]);
                   end;
         ;
     ;

     writeln('Informe um numero para multiplicar a diagonal: ');
     readln(n);

     for i:=1 to 4 do
         m[i,i]:=m[i,i]*n;
     ;

     writeln('Matriz resultante: ');
     for i:=1 to 4 do
         begin
              writeln;
              for j:=1 to 4 do
                  write(m[i,j], ' ');
               ;
         end;

     ;

     readln;
end.

// 6) Fazer um programa para ler ao final da manhã o fechamento do caixa de uma loja, ou seja, o seu
// rendimento ao final da manhã. O mesmo deverá ser feito ao final da tarde. Este levantamento deve ser
// feito todos os dias da semana (de segunda-feira a sexta-feira). Ao final da semana, após feitas todas as
// leituras, descobrir e escrever o dia e o turno que teve maior rendimento. Obs.: Utilizar o conceito de
// matriz para resolver este exercício.

program exerc6_matriz;
uses crt;

var matriz: array [1..2, 1..5] of integer;
var i,j,maior, posc: integer;
var turno: string[5];

begin
     maior:=matriz[1,1];

     writeln('Digite o rendimento semanal: ');
     for i:=1 to 2 do
         for j:=1 to 5 do
             begin
                  write('[',i,',',j,']');
                  readln(matriz[i,j]);
             end;
         ;
     ;
     for i:=1 to 2 do
         for j:=1 to 5 do
             if matriz[i,j] > maior then
                begin
                    maior:=matriz[i,j];
                    posc:=j;
                end;
             ;
         ;
     ;

     for i:=1 to 2 do
         for j:=1 to 5 do
             if i=1 then
                turno:='manha'
             else
                 turno:='tarde'
             ;
         ;
     ;

    writeln('O dia da semana com Maior rendimento: ',posc);
    writeln('O rendimento foi de: ', maior);
    writeln('Turno: ',turno);


readln;


end.

// 7) Escreva um programa em Pascal que, dada uma matriz 3x3, armazena em cada posição da matriz, a
// soma dos valores da linha e coluna que definem a posição. Por exemplo, na posição [1][2] você deverá
// armazenar o valor 1+2 = 3 e assim por diante. Imprima a matriz na tela.

program exerc7;
uses crt;

var matriz: array [1..3 , 1..3] of integer;
var i,j: integer;


begin
     for i:=1 to 3 do
         for j:=1 to 3 do
             matriz[i,j]:=i+j;
         ;
     ;

     writeln('Matriz na tela: ');
     for i:=1 to 3 do
         begin
              writeln;
              for j:=1 to 3 do
                  write(matriz[i,j],' ');
              ;
         end;
      ;

     readln;

end.

// 8) Escreva um programa em PASCAL que leia 2 matrizes A e B e calcule a matriz C que será o resultado
// da multiplicação de A por B (A, B e C têm dimensão 2x2). Mostre as 3 matrizes ao final da execução.
// Lembre-se que multiplicação de matrizes segue uma regra específica.

program exerc8;
uses crt;

var A,B,C: array [1..2, 1..2] of integer;
var i, j: integer;

begin
     writeln('Digite os valores da Matriz A: ');
     for i:=1 to 2 do
         for j:=1 to 2 do
             begin
                 write('[',i,',',j,']: ');
                  readln(A[i,j]);
             end;
         ;
     ;

     writeln('Digite os valores da Matriz B: ');
     for i:=1 to 2 do
         for j:=1 to 2 do
             begin
                  write('[',i,',',j,']: ');
                  readln(B[i,j]);
             end;
         ;
     ;


     for i:=1 to 2 do
         for j:=1 to 2 do
             C[i,j]:=(A[i,1]*B[1,j] + A[i,2]*B[2,j]);
          ;
      ;

      writeln;
      writeln('Matriz A: ');
      for i:=1 to 2 do
          begin
               writeln;
               for j:=1 to 2 do
                   write(A[i,j],' ');
               ;
           end;
       ;

       writeln;
       writeln;
       writeln('Matriz B: ');
      for i:=1 to 2 do
          begin
               writeln;
               for j:=1 to 2 do
                   write(B[i,j],' ');
               ;
           end;
       ;
      writeln;
      writeln;
      writeln('Matriz C resultante: ');
      for i:=1 to 2 do
          begin
               writeln;
               for j:=1 to 2 do
                   write(C[i,j],' ');
               ;
           end;
       ;
  readln;
end.

// 9) Desenvolva um programa que leia uma matriz 2x2, calcule e mostre a matriz resultante a qual deve ser a
// matriz digitada multiplicada pelo maior elemento da matriz original.

program exerc9;
uses crt;

var matrizoriginal, matrizresultante: array [1..2 , 1..2] of integer;
var i, j, maior: integer;

begin
     maior:=matrizoriginal[1,1];

     writeln('Digite os elementos da Matriz Original: ');
     for i:=1 to 2 do
         for j:=1 to 2 do
             begin
                  write('[',i,',',j,']: ');
                  readln(matrizoriginal[i,j]);
             end;
          ;
     ;

     for i:=1 to 2 do
         for j:=1 to 2 do
             if matrizoriginal[i,j] > maior then
                maior:=matrizoriginal[i,j];
             ;
         ;
     ;

     for i:=1 to 2 do
         for j:=1 to 2 do
             matrizresultante[i,j]:=matrizoriginal[i,j]*maior;
         ;
     ;

     writeln('Matriz Original: ');
     for i:=1 to 2 do
         begin
              writeln;
              for j:=1 to 2 do
                  write(matrizoriginal[i,j],' ');
              ;
         end;
     ;

     writeln;
     writeln;

     writeln('Matriz multiplicada pelo maior elemento que eh: ', maior);
     for i:=1 to 2 do
         begin
              writeln;
              for j:=1 to 2 do
                  write(matrizresultante[i,j],' ');
              ;
          end;
     ;


     readln;
end.

// 10) Implemente um programa em Pascal que leia uma matriz 10x20 com números inteiros e some cada uma
// das linhas, armazenando o resultado das somas em um vetor. A seguir, multiplique cada elemento da
// matriz pela soma da linha correspondente e mostre a matriz resultante.

program exerc10;
uses crt;

var matriz, matrizresult: array [1..10 , 1..20] of integer;
var vtsoma: array [1..10] of integer;
var i, j, a: integer;

begin

     writeln('Digite os valores da Matriz: ');
     for i:=1 to 10 do
         for j:=1 to 20 do
             begin
                  write('[',i,',',j,']: ');
                  readln(matriz[i,j]);
             end;
         ;
     ;

     for i:=1 to 10 do
         for j:=1 to 20 do
              vtsoma[i]:=vtsoma[i]+matriz[i,j];
         ;
     ;

     for i:=1 to 10 do
         for j:=1 to 20 do
                matrizresult[i,j]:=matriz[i,j]*vtsoma[i];
         ;
     ;

     writeln('A soma das linhas eh: ');
     for a:=1 to 3 do
         writeln(vtsoma[a]);
     ;



     writeln('A matriz resultante eh: ');
     for i:=1 to 3 do
         begin
              writeln;
              for j:=1 to 4 do
                   write(matrizresult[i,j],' ');
              ;
         end;

     ;

     readln;

end.

// 11) Implemente um programa que leia uma matriz 8x8 com números inteiros e mostre uma mensagem
// informando se a matriz é simétrica. Uma matriz simétrica possui A[i,j] = A[j,i].

program exerc11;
uses crt;

var matriz: array [1..8 , 1..8] of integer;
var i, j: integer;
var simetrica: String[5];


begin
     writeln('Digite os numeros da Matriz: ');
     for i:=1 to 8 do
         for j:=1 to 8 do
             begin
                  write('[',i,',',j,']: ');
                  readln(matriz[i,j]);
             end;
         ;
      ;

      for i:=1 to 8 do
          for j:=1 to 8 do
                   if matriz[i,j]=matriz[j,i] then
                      simetrica:='true';
                    ;
           ;
       ;

       if simetrica = 'true' then
           writeln('A matriz eh simetrica.')
       else
           writeln('A matriz nao eh simetrica.')
       ;


     readln;

end.
