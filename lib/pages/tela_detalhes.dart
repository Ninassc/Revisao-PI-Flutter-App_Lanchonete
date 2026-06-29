import 'package:flutter/material.dart';

class TelaDetalhes extends StatefulWidget {
  final String nome;
  final String preco;
  final String descricao;
  final double altura;
  final String destaque;

  const TelaDetalhes({
    super.key,
    required this.nome,
    required this.preco,
    required this.descricao,
    required this.altura,
    required this.destaque,
  });

  @override
  State<TelaDetalhes> createState() => _TelaDetalhesState();
}

class _TelaDetalhesState extends State<TelaDetalhes> {
  String mensagem = "";
  bool ativo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalhes")),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  ativo = !ativo;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 2),
                padding: EdgeInsets.all(10),
                width: ativo ? MediaQuery.of(context).size.width - 40 : 300,
                height: widget.altura * 0.6,
                decoration: BoxDecoration(
                  color: ativo ? Colors.amber : Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  spacing: 30,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        widget.nome,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 27,
                        ),
                      ),
                    ),
                    Text(
                      "Preço: ${widget.preco}",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Descrição: ${widget.descricao}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          mensagem = widget.destaque;
                        });
                      },
                      child: Text("Adicionar Destaque"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      mensagem,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
