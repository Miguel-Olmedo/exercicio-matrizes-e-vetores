Algoritmo "Trabalho3\_Ex4\_Matrizes\_Temperaturas"
Var

   temp: vetor[1..7, 1..3] de real
   soma_dia, media_dia, maior_media: real
   dia, horario, dia_mais_quente: inteiro
Inicio
   Escreval("=== REGISTRO DE TEMPERATURAS (7 DIAS / 3 HORÁRIOS) ===")
   Escreval("")

   // Leitura das medições diárias (Manhã, Tarde e Noite)

   Para dia de 1 ate 7 faca
      Escreval("--- DIA ", dia, " ---")

      Para horario de 1 ate 3 faca
         Se horario = 1 Entao

            Escreva("Temperatura Manhã (°C): ")
         Senao
            Se horario = 2 Entao
               Escreva("Temperatura Tarde (°C): ")
            Senao
               Escreva("Temperatura Noite (°C): ")
            fimse
         fimse
         leia(temp[dia, horario])

      fimpara
      Escreval("")
   fimpara
   maior_media <- -999.0
   dia_mais_quente <- 1

   // Cálculo das médias diárias e identificação do dia mais quente

   Escreval("=== MÉDIAS DIÁRIAS E ANÁLISE ===")
   para dia de 1 ate 7 faca
      soma_dia <- 0

      para horario de 1 ate 3 faca
         soma_dia <- soma_dia + temp[dia, horario]
      fimpara

      media_dia <- soma_dia / 3

      Escreval("Dia ", dia, " - Média: ", media_dia:1:2, "°C")
      // Atualização do dia com maior média acumulada
      se (media_dia > maior_media) entao
         maior_media <- media_dia
         dia_mais_quente <- dia
      fimse
   fimpara

   escreval("O dia mais quente foi o DIA ", dia_mais_quente, " com média de ", maior_media:1:2, "°C.")
fimalgoritmo