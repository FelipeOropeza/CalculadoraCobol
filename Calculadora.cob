       identification division.
       program-id. Calculadora.
       data division.
           working-storage section.
                01 num1 pic 9(3).
                01 num2 pic 9(3).
                01 resultado pic 9(3).
                01 operacao pic x.
       procedure division.
           display "Digite o primeiro numero: ".
              accept num1.
           display "Digite o segundo numero: ".
              accept num2.

           display "Digite a operacao (+, -, *, /): ".
              accept operacao.
               
           evaluate operacao
                when "+" perform soma
                when "-" perform subtracao
                when "*" perform multiplicacao
                when "/" perform divisao
                when other display "Operacao invalida"
           end-evaluate.

              display "O resultado e: " resultado.

           display 'Pressione ENTER para sair.'
               accept  num1.
       stop run.

       soma.
           compute resultado = num1 + num2.

       subtracao.
           compute resultado = num1 - num2.

       multiplicacao.
           compute resultado = num1 * num2.

       divisao.
           compute resultado = num1 / num2.


