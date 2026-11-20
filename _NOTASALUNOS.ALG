Algoritmo "Trabalho3_Ex8_Vetores_NotasAlunos"
Var

   nomes: vetor[1..10] de caracter
   p1, p2, media: vetor[1..10] de real
   i, matricula: inteiro
   opcao: caracter

Inicio

   Escreval("=== CADASTRO DE ALUNOS E NOTAS ===")
   Escreval("")

   Para i de 1 ate 10 faca

      Escreval("--- Aluno ", i, " ---")

      Escreva("Nome do aluno: ")
      Leia(nomes[i])

      Escreva("Nota da P1: ")
      Leia(p1[i])

      Escreva("Nota da P2: ")
      Leia(p2[i])

      media[i] <- (p1[i] + p2[i]) / 2
      Escreval("")
   fimpara

   Repita

      Escreval("=== LISTA DE ALUNOS E MATRÍCULAS ===")
      para i de 1 ate 10 faca
         Escreval("Matrícula ", i, ": ", nomes[i])
      fimpara
      Escreval("------------------------------------")

      Escreval("")


      Escreva("Digite o número da matrícula (1 a 10) para consultar as notas: ")
      leia(matricula)


      se (matricula >= 1) e (matricula <= 10) entao
         Escreval("")
         Escreval("=== CONSULTA DO ALUNO ===")

         Escreval("Matrícula: ", matricula)
         Escreval("Nome do Aluno: ", nomes[matricula])
         Escreval("Nota P1: ", p1[matricula]:1:2)
         Escreval("Nota P2: ", p2[matricula]:1:2)
         Escreval("Média Simples: ", media[matricula]:1:2)
      Senao
         Escreval("Matrícula inválida! Digite um número de 1 a 10.")
      Fimse

      Escreval("")

      Escreva("Deseja consultar outro aluno (S/N): ")
      leia(opcao)

   ate (opcao = "N") ou (opcao = "n")

fimalgoritmo