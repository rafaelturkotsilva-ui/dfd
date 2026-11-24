
programa
{
    funcao inicio()
    {
        inteiro menu
        inteiro personagem
        inteiro inimigo
        inteiro vidaJogador
        inteiro vidaInimigo
        inteiro ataqueJogador
        inteiro ataqueInimigo
        inteiro dano
        inteiro cura
        inteiro acao

        menu = 0

        enquanto (menu != 3)
        {
            escreva("\n============================\n")
            escreva("      BATALHA POR TURNOS\n")
            escreva("============================\n")
            escreva("1 - Iniciar batalha\n")
            escreva("2 - Sobre o jogo\n")
            escreva("3 - Sair\n")
            escreva("============================\n")
            escreva("Escolha uma opcao: ")
            leia(menu)

            se (menu == 1)
            {
                // ESCOLHER PERSONAGEM
                escreva("\nEscolha seu personagem:\n")
                escreva("1 - Guerreiro\n")
                escreva("2 - Mago\n")
                escreva("3 - Arqueiro\n")
                escreva("Escolha: ")
                leia(personagem)

                se (personagem == 1)
                {
                    vidaJogador = 500
                    ataqueJogador = 40
                    escreva("Voce escolheu Guerreiro!\n")
                }
                senao se (personagem == 2)
                {
                    vidaJogador = 1000
                    ataqueJogador = 60
                    escreva("Voce escolheu Mago!\n")
                }
                senao
                {
                    vidaJogador = 1300
                    ataqueJogador = 80
                    escreva("Voce escolheu Arqueiro!\n")
                }

                // ESCOLHER INIMIGO
                escreva("\nEscolha o inimigo:\n")
                escreva("1 - Goblin (medio)\n")
                escreva("2 - Orc (dificil)\n")
                escreva("3 - Dragao (impossivel)\n")
                escreva("Escolha: ")
                leia(inimigo)

                se (inimigo == 1)
                {
                    vidaInimigo = 300
                    ataqueInimigo = 40
                }
                senao se (inimigo == 2)
                {
                    vidaInimigo = 600
                    ataqueInimigo = 60
                }
                senao
                {
                    vidaInimigo = 1200
                    ataqueInimigo = 80
                }

                // BATALHA
                enquanto (vidaJogador > 0 e vidaInimigo > 0)
                {
                    escreva("\n----------------------\n")
                    escreva("Sua vida: ", vidaJogador, "\n")
                    escreva("Vida do inimigo: ", vidaInimigo, "\n")

                    escreva("\n1 - Atacar\n")
                    escreva("2 - Recuperar vida\n")
                    escreva("Escolha sua acao: ")
                    leia(acao)

                    se (acao == 1)
                    {
                        dano = sorteia(10, ataqueJogador)
                        vidaInimigo = vidaInimigo - dano

                        escreva("Voce causou ", dano, " de dano!\n")
                    }
                    senao se (acao == 2)
                    {
                        cura = sorteia(5, 20)
                        vidaJogador = vidaJogador + cura

                        se (vidaJogador > 100)
                        {
                            vidaJogador = 100
                        }

                        escreva("Voce recuperou ", cura, " de vida!\n")
                    }
                    senao
                    {
                        escreva("Opcao invalida!\n")
                    }

                    // ATAQUE DO INIMIGO
                    se (vidaInimigo > 0 e (acao == 1 ou acao == 2))
                    {
                        dano = sorteia(3, ataqueInimigo)
                        vidaJogador = vidaJogador - dano

                        escreva("O inimigo causou ", dano, " de dano!\n")
                    }
                }

                // RESULTADO
                escreva("\n===== RESULTADO =====\n")

                se (vidaJogador > 0)
                {
                    escreva("PARABENS! VOCE VENCEU!\n")
                }
                senao
                {
                    escreva("VOCE PERDEU A BATALHA!\n")
                }

                escreva("Vida do jogador: ", vidaJogador, "\n")
                escreva("Vida do inimigo: ", vidaInimigo, "\n")
            }
            senao se (menu == 2)
            {
                escreva("\n===== SOBRE O JOGO =====\n")
                escreva("Batalha por Turnos\n")
                escreva("Escolha seu heroi e enfrente inimigos!\n")
                escreva("Ataque ou recupere sua vida para vencer.\n")
            }
            senao se (menu == 3)
            {
                escreva("\nObrigado por jogar!\n")
                escreva("Encerrando o jogo...\n")
            }
            senao
            {
                escreva("\nOpcao invalida! Tente novamente.\n")
            }
        }
    }
}
