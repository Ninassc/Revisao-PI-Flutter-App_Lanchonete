import 'package:flutter/material.dart';

class TelaPedido extends StatefulWidget {
  const TelaPedido({super.key});

  @override
  State<TelaPedido> createState() => _TelaPedidoState();
}

class _TelaPedidoState extends State<TelaPedido> {
  int contadorPedididos = 0;

  TextEditingController controllerNome = TextEditingController();
  TextEditingController controllerProduto = TextEditingController();
  TextEditingController controllerObservacao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void verificar() {
      if (controllerNome.text.isEmpty || controllerProduto.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Um campo obrigatório ficou sem ser preenchido!"),
          ),
        );
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Pedido enviado com sucesso!")));
        setState(() {
          contadorPedididos++;
        });
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text("Pedido")),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              TextField(
                controller: controllerNome,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text("Nome do Cliente"),
                ),
              ),
              TextField(
                controller: controllerProduto,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text("Nome do Produto"),
                ),
              ),
              TextField(
                controller: controllerObservacao,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text("Observação"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  verificar();
                },
                child: Text("Enviar Pedido"),
              ),
              Text("Pedidos enviados = $contadorPedididos"),
            ],
          ),
        ),
      ),
    );
  }
}
