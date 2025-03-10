       IDENTIFICATION DIVISION.
       PROGRAM-ID. Calculadora.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 num1       PIC 9(2).
       01 num2       PIC 9(2).
       01 resultado  PIC 9(3). 
       01 operacao   PIC X.
       01 controle-Loop PIC X(05) VALUE 'TRUE'.

       PROCEDURE DIVISION.

           PERFORM UNTIL controle-Loop = 'FALSE'
               DISPLAY "Digite o primeiro numero: "
               ACCEPT num1
               DISPLAY "Digite o segundo numero: "
               ACCEPT num2

               DISPLAY "Digite a operacao (+, -, *, /) ou S para sair: "
               ACCEPT operacao
               
               EVALUATE operacao
                   WHEN "+" 
                       PERFORM soma
                   WHEN "-" 
                       PERFORM subtracao
                   WHEN "*" 
                       PERFORM multiplicacao
                   WHEN "/" 
                       PERFORM divisao
                   WHEN "S" 
                       MOVE 'FALSE' TO controle-Loop
                   WHEN OTHER 
                       DISPLAY "Operacao invalida"
               END-EVALUATE

               IF controle-Loop = 'TRUE'
                   DISPLAY "O resultado e: " resultado
               END-IF
           END-PERFORM.

           DISPLAY 'Pressione ENTER para sair.'
           ACCEPT num1
           STOP RUN.

       soma.
           COMPUTE resultado = num1 + num2
           EXIT.

       subtracao.
           COMPUTE resultado = num1 - num2
           EXIT.

       multiplicacao.
           COMPUTE resultado = num1 * num2
           EXIT.

       divisao.
           IF num2 = 0
               DISPLAY "Erro: Divisao por zero nao permitida"
               MOVE 'FALSE' TO controle-Loop
           ELSE
               COMPUTE resultado = num1 / num2
           END-IF.
           EXIT.
