program CalculadoraCientifica;

uses Math, SysUtils;

var
  op: integer;
  a, b, resultado: real;
  n, i, fatorial: integer;

function GrausParaRadianos(x: real): real;
begin
  GrausParaRadianos := x * Pi / 180;
end;

procedure Menu;
begin
  Writeln('========== CALCULADORA CIENTIFICA ==========');
  Writeln('1  - Soma');
  Writeln('2  - Subtracao');
  Writeln('3  - Multiplicacao');
  Writeln('4  - Divisao');
  Writeln('5  - Potencia');
  Writeln('6  - Raiz Quadrada');
  Writeln('7  - Logaritmo (base 10)');
  Writeln('8  - Logaritmo Natural');
  Writeln('9  - Seno');
  Writeln('10 - Cosseno');
  Writeln('11 - Tangente');
  Writeln('12 - Valor Absoluto');
  Writeln('13 - Fatorial');
  Writeln('0  - Sair');
  Write('Escolha uma opcao: ');
end;

begin
  repeat
    Menu;
    Readln(op);
    Writeln;

    case op of
      1: begin
           Write('Digite dois numeros: ');
           Readln(a, b);
           resultado := a + b;
           Writeln('Resultado = ', resultado:0:4);
         end;

      2: begin
           Write('Digite dois numeros: ');
           Readln(a, b);
           resultado := a - b;
           Writeln('Resultado = ', resultado:0:4);
         end;

      3: begin
           Write('Digite dois numeros: ');
           Readln(a, b);
           resultado := a * b;
           Writeln('Resultado = ', resultado:0:4);
         end;

      4: begin
           Write('Digite dois numeros: ');
           Readln(a, b);
           if b = 0 then
             Writeln('Erro: divisao por zero!')
           else
           begin
             resultado := a / b;
             Writeln('Resultado = ', resultado:0:4);
           end;
         end;

      5: begin
           Write('Digite a base e o expoente: ');
           Readln(a, b);
           resultado := Power(a, b);
           Writeln('Resultado = ', resultado:0:4);
         end;

      6: begin
           Write('Digite um numero: ');
           Readln(a);
           if a < 0 then
             Writeln('Erro: raiz de numero negativo!')
           else
           begin
             resultado := Sqrt(a);
             Writeln('Resultado = ', resultado:0:4);
           end;
         end;

      7: begin
           Write('Digite um numero: ');
           Readln(a);
           if a <= 0 then
             Writeln('Erro: logaritmo invalido!')
           else
           begin
             resultado := Log10(a);
             Writeln('Resultado = ', resultado:0:4);
           end;
         end;

      8: begin
           Write('Digite um numero: ');
           Readln(a);
           if a <= 0 then
             Writeln('Erro: logaritmo invalido!')
           else
           begin
             resultado := Ln(a);
             Writeln('Resultado = ', resultado:0:4);
           end;
         end;

      9: begin
           Write('Digite o angulo em graus: ');
           Readln(a);
           resultado := Sin(GrausParaRadianos(a));
           Writeln('Resultado = ', resultado:0:4);
         end;

      10: begin
            Write('Digite o angulo em graus: ');
            Readln(a);
            resultado := Cos(GrausParaRadianos(a));
            Writeln('Resultado = ', resultado:0:4);
          end;

      11: begin
            Write('Digite o angulo em graus: ');
            Readln(a);
            resultado := Tan(GrausParaRadianos(a));
            Writeln('Resultado = ', resultado:0:4);
          end;

      12: begin
            Write('Digite um numero: ');
            Readln(a);
            resultado := Abs(a);
            Writeln('Resultado = ', resultado:0:4);
          end;

      13: begin
            Write('Digite um numero inteiro: ');
            Readln(n);
            if n < 0 then
              Writeln('Erro: fatorial nao definido para negativos!')
            else
            begin
              fatorial := 1;
              for i := 1 to n do
                fatorial := fatorial * i;
              Writeln('Resultado = ', fatorial);
            end;
          end;

    end;

    if op <> 0 then
    begin
      Writeln;
      Write('Pressione ENTER para continuar...');
      Readln;
      Writeln;
    end;

  until op = 0;

  Writeln('Encerrando calculadora...');
end.
