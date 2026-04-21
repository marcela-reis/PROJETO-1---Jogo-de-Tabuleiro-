programa { inclua biblioteca Util --> u

funcao inicio() { inteiro pos1 = 0, pos2 = 0, dado, turno = 1, i, opcao

enquanto (pos1 < 25 e pos2 < 25)
{
 
    escreva("\n-----------------------------")
    escreva("\n>>>>> FUGA DO MUNDO INVERTIDO <<<<<")
    escreva("\n-----------------------------\n")

    // DESENHAR TABULEIRO
    para (i = 1; i <= 20; i++)
    {
        escreva("[")

        se (i == pos1 e i == pos2)
        {
            escreva("P1P2")
        }
        senao se (i == pos1)
        {
            escreva("*P1*")
        }
        senao se (i == pos2)
        {
            escreva("*P2*")
        }
        senao
        {
            escreva(i)
        }

        escreva("]")
    }

    escreva("\n")

    // TURNO
    se (turno == 1)
    {
        escreva("\QUE OS JOGOS COMEÇEM! VEZ DE ELEVEN. 1\n")
    }
    senao
    {
        escreva("\nQUE OS JOGOS COMEÇEM! VEZ DE WILL. 2\n")
    }

    escreva("1 - Jogar dado\n")
    escreva("0 - Sair\n")
    leia(opcao)

    se (opcao == 0)
    {
        escreva("PORTAL FECHADO!.\n")
        pare
    }

    se (opcao == 1)
    {
        dado = u.sorteia(1, 6)
        escreva("Dado: ", dado, "\n")

        se (turno == 1)
        {
           pos1= pos1 + dado
             se ("posicao1 == 2")
            {
              //COMEÇO DO JODO E DAS REGRAS PARA CADA CASA.
              //AQUI É A PARTE DA ELEVEN 
              
                escreva(">>>>> CASA 2 <<<<< QUE SORTE! SUA SAÍDA ESTÁ CADA VEZ MAIS PRÓXIMA. AVANÇE PARA A CASA 05. \n")   
                posicao1 == 5
            }

            se (posicao1 == 3)
            {
                escreva(">>>>> CASA 3 - JOGUE OUTRO DADO! 🎲<<<<<\n")
                dadoAd = u.sorteia(1,3)
                posicao1 = posicao1 + dadoAd
            }

            se (posicao1 == 7)
            {
                escreva(">>>>> CASA 7 - OPS! VOCÊ FOI BLOQUEADO PELOS DEMOGORGONS! FIQUE UMA RODADA SEM JOGAR. 👾<<<<<\n")
                vez != 1
            }
            se (posicao1 == 10)
            {
                escreva(">>>>> CASA 10 - TROCA DE POSIÇÕES! TROQUE DE LUGAR COM O WILL <<<<< \n")
                inteiro temporario = posicao1 // variavel temporaria pra armazernar e trocar a posição 
                posicao1 = posicao2
                posicao2 = temporario
            }
            se (posicao1 == 12)
            {
              escreva(">>>>> CASA 12 - OPS, QUE AZAR! RETORNE UMA CASA! <<<<< \n")
              posicao1 = posicao1 - 1
            }
            se (posicao1 == 15)
            {
              escreva(">>>>>> CASA 15 - SHOWTIME!!! CANTE UMA MÚSICA DA TRILHA SONORA OU VOLTE 02 CASAS. 🎤🎸.(aperte 0 se não cantar) <<<<<")
                leia(m)
                se (m == 0) {
                posicao1 = posicao1 - 2}

            }
            se (posicao1 == 19)
            {
              escreva(">>>>> CASA 19 - AH, NÃO! VOCÊ FOI PEGO PELOS DEMOGORGONS! VOLTE PARA A CASA 01 <<<<<")
              posicao1 == 1
            }
            // FIM DAS REGRAS DA PARTE DA ELEVEN
            
            turno= 2
        }
        senao
        {
            pos2= pos2 + dado

            //COMEÇO DA PARTE DO WILL

             se (posicao1 == 2)
            {
                escreva(">>>>> CASA 2 <<<<< QUE SORTE! SUA SAÍDA ESTÁ CADA VEZ MAIS PRÓXIMA. AVANÇE PARA A CASA 05. \n")  
                posicao1 == 5
            }

            se (posicao1 == 3)
            {
                escreva(">>>>> CASA 3 - JOGUE OUTRO DADO! 🎲<<<<<\n")
                dadoAd = u.sorteia(1,3)
                posicao1 = posicao1 + dadoAd
            }

            se (posicao1 == 7)
            {
                escreva(">>>>> CASA 7 - OPS! VOCÊ FOI BLOQUEADO PELOS DEMOGORGONS! FIQUE UMA RODADA SEM JOGAR. 👾<<<<<\n")
                vez != 1
            }
            se (posicao1 == 10)
            {
                escreva(">>>>> CASA 10 - TROCA DE POSIÇÕES! TROQUE DE LUGAR COM O WILL <<<<< \n")
                inteiro temporario = posicao1 // variavel temporaria pra armazernar e trocar a posição 
                posicao1 = posicao2
                posicao2 = temporario
            }
            se (posicao1 == 12)
            {
              escreva(">>>>> CASA 12 - OPS, QUE AZAR! RETORNE UMA CASA! <<<<< \n")
              posicao1 = posicao1 - 1
            }
            se (posicao1 == 15)
            {
              escreva(">>>>>> CASA 15 - SHOWTIME!!! CANTE UMA MÚSICA DA TRILHA SONORA OU VOLTE 02 CASAS. 🎤🎸.(aperte 0 se não cantar) <<<<<")
                leia(m)
                se (m == 0) {
                posicao1 = posicao1 - 2}

            }
            se (posicao1 == 19)
            {
              escreva(">>>>> CASA 19 - AH, NÃO! VOCÊ FOI PEGO PELOS DEMOGORGONS! VOLTE PARA A CASA 01 <<<<<")
              posicao1 == 1
            }
            // FIM DAS REGRAS DA PARTE DO WILL!!!
            
            turno= 1
        }
    }
    senao
    {
        escreva("❌ Opção inexistente! O Vecna está te confundindo...\n")
    }
}

// RESULTADO FINAL
escreva("\n=============================\n")

se (pos1 >= 20)
{
    escreva("🏆 \n BOA! ELEVEN CONSEGUIU ESCAPAR DO VECNA!")
}
senao se (pos2 >= 20)
{
    escreva("🏆 \n UFA! WILL ESTÁ A SALVO! ")
}
} }
