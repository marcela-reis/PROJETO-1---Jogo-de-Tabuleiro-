programa
{
	inclua biblioteca Util --> u
funcao inicio()
{
	inteiro opcao
	
 faca
  {
      escreva("  🌌🩸⚡🚲🕷️  STRANGER THINGS - TRILHA DE HAWKINS  🌌🩸⚡🚲🕷️\n")
      escreva("   Escolha uma opcao: \n")
      escreva("Aperte 1 - Começar a trilha (Jogar)\n")
      escreva("Aperte 2 - Verificar pontuação\n")
      escreva("Aperte 3 - Fechar o jogo\n")
      

      leia(opcao)


escolha(opcao) //função nova dentro da funçao faca-enquanto
      {
                caso 1:
         		    jogar()
         		    pare

     		        caso 2:
                mostrarPlacar()
         		    pare

        	      caso 3:
         		    escreva("\nAté a próxima aventura. Encerrando...")
         		    pare

                caso contrario:
       	        escreva("\nOpcao invalida. Tente novamente.\n")
      }
  }
   
      enquanto(opcao != 3)
}
}
 		funcao jogar()