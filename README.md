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
        escreva("\nTurno do Jogador 1\n")
    }
    senao
    {
        escreva("\nTurno do Jogador 2\n")
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
            turno= 2
        }
        senao
        {
            pos2= pos2 + dado
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
    escreva("🏆 \nBOA! Jogador 1 escapou do Vecna!")
}
senao se (pos2 >= 20)
{
    escreva("🏆 \nUFA! Jogador 2 está a salvo!")
}
} }
