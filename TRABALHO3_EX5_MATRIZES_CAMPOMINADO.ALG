Algoritmo "Trabalho3_Ex5_Matrizes_CampoMinado"
Var
[   campo: vetor[1..4, 1..4] de inteiro
   linha, coluna: inteiro
Inicio
   // Montagem do tabuleiro com áreas seguras (0) e minas (9)

   //linha 1
   campo[1, 1] <- 0
   campo[1, 2] <- 0
   campo[1, 3] <- 9
   campo[1, 4] <- 0

   //linha 2
   campo[2, 1] <- 9
   campo[2, 2] <- 0
   campo[2, 3] <- 0
   campo[2, 4] <- 0

   //linha 3
   campo[3, 1] <- 0
   campo[3, 2] <- 9
   campo[3, 3] <- 0
   campo[3, 4] <- 0

   //linha 4
   campo[4, 1] <- 0
   campo[4, 2] <- 0
   campo[4, 3] <- 0
   campo[4, 4] <- 9

   Escreval("=== JOGO DO CAMPO MINADO (4x4) ===")

   Escreval("Áreas seguras = 0 | Minas terrestres = 9")
   Escreval("")

   // Entrada das coordenadas de jogada
   Escreva("Digite a LINHA desejada (1 a 4): ")
   Leia(linha)

   Escreva("Digite a COLUNA desejada (1 a 4): ")
   Leia(coluna)
   Escreval("")

   // Verificação do palpite do jogador
   Se (linha >= 1) e (linha <= 4) e (coluna >= 1) e (coluna <= 4) entao
      Se (campo[linha, coluna] = 9) entao

         Escreval(" BOOM! Você pisou em uma mina na posição [", linha, ",", coluna, "]!")
         Escreval("Resultado: VOCÊ PERDEU!")
      senao
         Escreval(" Ufa! A posição [", linha, ",", coluna, "] é uma área segura (valor 0).")
         Escreval("Resultado: VOCÊ SOBREVIVEU!")
      fimse
   senao
      Escreval("Coordenadas inválidas! Digite linha e coluna entre 1 e 4.")
   fimse

fimalgoritmo