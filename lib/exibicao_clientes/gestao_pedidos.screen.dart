import 'package:flutter/material.dart';
import 'package:myapp/exibicao_clientes/exibicao_cliente.screen.dart';

class GestaoPedidosScreen extends StatefulWidget {
  final String title;

  const GestaoPedidosScreen({super.key, required this.title});

  @override
  State<GestaoPedidosScreen> createState() => _GestaoPedidosScreenState();
}

class _GestaoPedidosScreenState extends State<GestaoPedidosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.people, size: 80, color: Colors.deepPurple),
            const SizedBox(height: 16),
            const Text(
              "Gestão de Pedidos",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExibicaoClienteScreen(title: 'Clientes'),
                  ),
                );
              },
              icon: const Icon(Icons.list),
              label: const Text("Ver Clientes"),
            ),
          ],
        ),
      ),
    );
  }
}