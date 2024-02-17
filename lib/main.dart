import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());
// Método inicial da aplicação, chamando a classe "PerguntaApp". Os () deixam explícito que estou chamando o construtor da classe, que existe de forma
// implícita em Dart.
// É o componente raíz do app.

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida!');
  }

  @override
  // É usado para indicar que um método na subclasse está substituindo um método na superclasse. Usado para garantir que a implementação do método na
  // subclasse esteja correta e em conformidade com a assinatura do método na superclasse. É boa prática utilizar.
  // É útil para legibilidade, outro desenvolvedor pode ler o código e saber que o método substitui outro da superclasse, não é um novo.

  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
        // MaterialApp é um widgetfundamental. Usado para configurar o tema e o comportamento básico de um aplicativo.
        // Geralmente é o widget raíz da árvore de widgets da aplicação.
        // Define o tema (cores, tipografia, estilo de componentes)
        // Gerenciamento de rotas, Configurações de localização, Tratamento de erros e exceções;
        // Configurações da tela inicial usando a propriedade 'home', que recebe um widget para ser exibido como tela inicial.
        home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(children: <Widget>[
        // <widget> serve para informar que os elementos adicionados à lista "children" do widget "Column" serão do tipo 'widget'. É opcional.
        // Temos o widget e seu tipo. widget body do tipo column, que vai receber como parâmetros children do tipo widget.
        Text(perguntas[0],
            style: const TextStyle(
                color: Colors.yellow,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic)),
        ElevatedButton(
          // Quando pressionado, posso chamar também uma função e uma função arrow.
          onPressed: responder,
          child: const Text('Resposta 1',
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic)),
        ),
        ElevatedButton(
          onPressed: responder,
          child: const Text('Resposta 2'),
        ),
        ElevatedButton(
          onPressed: responder,
          child: const Text('Resposta 3'),
        )
      ]),
    ));
  }
}

// Nos botões, não evoque uma função "função ()" a não ser que essa função retorne uma função;
// O "ElevatedButton" é uma classe/widget, que tem seu construtor chamado, passando parâmetros nomeados -> um dos parâmetros é a função, ela é passada como parâmetro, não chamada.
// No "Onpressed", estou passando a função "responder" como parâmetro , e não evocando ela, até porque ela não retorna nada (void);