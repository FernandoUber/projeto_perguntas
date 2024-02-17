import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  void responder() {
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  @override

  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(children: <Widget>[
        Text(perguntas[perguntaSelecionada],
            style: const TextStyle(
                color: Colors.yellow,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic)),
        ElevatedButton(
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

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}