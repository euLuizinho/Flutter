import 'package:flutter/material.dart';

class ExibicaoClienteScreen extends StatefulWidget {
  final String title;

  const ExibicaoClienteScreen({super.key, required this.title});

  @override
  State<ExibicaoClienteScreen> createState() => _ExibicaoClienteScreenState();
}

class _ExibicaoClienteScreenState extends State<ExibicaoClienteScreen> {
  List<Map<String, dynamic>> clientes = [];

  @override
  void initState() {
    super.initState();
    clientes.add({"nome": "Luizinho", "idade": 21});
    clientes.add({"nome": "Busch", "idade": 40});
    clientes.add({"nome": "Never", "idade": 6});
    clientes.add({"nome": "MaryLur", "idade": 16});
    clientes.add({"nome": "Scarpitti", "idade": 26});
    clientes.add({"nome": "Tonya", "idade": 69});
    clientes.add({"nome": "Pereirana", "idade": 19});
  }

  Widget formatarTexto(String nome, int idade) {
    String eMaior = idade >= 18 ? "é de maior" : "é de menor";
    return ListTile(
      leading: const Icon(Icons.person),
      title: Text(nome),
      subtitle: Text("$idade anos — $eMaior"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: [
          for (var cliente in clientes)
            formatarTexto(cliente['nome'], cliente['idade'])
        ],
      ),
    );
  }
}