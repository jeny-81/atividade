import 'package:flutter/material.dart';

void main() {
  runApp(TinderLoginScreen());
}

class TinderLoginScreen extends StatelessWidget {
  const TinderLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // Degradê de vermelho e rosa com inclinação diagonal mais acentuada
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 253, 18, 1),
                Color.fromARGB(255, 247, 26, 99),
              ],
              begin: Alignment.topLeft, // Começa no topo esquerdo
              end: Alignment.bottomRight, // Termina no fundo direito
              stops: [
                0.2,
                0.8
              ], // Ajusta a posição das cores para um gradiente mais acentuado
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo Tinder com ícone de fogo
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.whatshot, // Ícone de fogo padrão do Flutter
                      size: 50.0, // Tamanho do ícone
                      color: Colors.white, // Cor do ícone
                    ),
                    SizedBox(
                        width: 10.0), // Espaçamento entre o ícone e o texto
                    Text(
                      'tinder',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                // Texto sobre Termos
                const Text(
                  'Ao tocar em "Entrar" você concorda com os nossos Termos. '
                  'Saiba como processamos seus dados em nossa '
                  'Política de Privacidade e Política de Cookies.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),

                // Botão Entrar com Google
                LoginButton(
                  icon: Icons.g_mobiledata_outlined,
                  text: "Entrar com o Google",
                  iconColor: const Color.fromARGB(
                      255, 255, 255, 255), // Cor do ícone do Google
                ),
                const SizedBox(height: 10),

                // Botão Entrar com Facebook
                LoginButton(
                  icon: Icons.facebook, // Atualize com o ícone adequado
                  text: "Entrar com o Facebook",
                  iconColor: const Color.fromARGB(
                      255, 248, 248, 248), // Cor do ícone do Facebook
                ),
                const SizedBox(height: 10),

                // Botão Entrar com número de telefone
                LoginButton(
                  icon: Icons.phone,
                  text: "Entrar com o número de telefone",
                  iconColor: const Color.fromARGB(
                      255, 255, 255, 255), // Cor do ícone do telefone
                ),

                const SizedBox(height: 20),

                // Texto Problemas para entrar?
                const Text(
                  'Problemas para entrar?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 252, 252, 252),
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor; // Adicionando a cor do ícone

  const LoginButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent, // Fundo transparente
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        minimumSize: const Size(double.infinity, 50), // Largura total do botão
        side:
            const BorderSide(color: Colors.white), // Adiciona uma borda branca
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor, // Usando a cor do ícone passada
          ),
          const SizedBox(width: 10), // Espaçamento entre ícone e texto
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center, // Centraliza o texto
            ),
          ),
        ],
      ),
    );
  }
}
