import 'package:flutter/material.dart';
import 'package:revisao_lanchonete_express/pages/tela_detalhes.dart';
import 'package:revisao_lanchonete_express/pages/tela_pedido.dart';
import 'package:revisao_lanchonete_express/widgets/card_produto.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Lanchonete Express")),

      body: LayoutBuilder(
        builder: (context, constraints) {
          final altura = constraints.maxHeight;

          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsetsGeometry.all(20),
                child: Center(
                  child: Column(
                    spacing: 20,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Boas-Vindas!!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 27,
                        ),
                      ),
                      Align(
                        alignment: AlignmentGeometry.centerStart,
                        child: Text(
                          "Cardápio",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      CardProduto(
                        nome: "X-Burguer",
                        preco: "18.00",
                        descricao: "Pão, carne, queijo e molho especial.",
                        aoClicar: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TelaDetalhes(
                                nome: "X-Burguer",
                                preco: "18.00",
                                descricao:
                                    "Pão, carne, queijo e molho especial.",
                                altura: altura,
                                destaque: "Lanche mais vendido",
                              ),
                            ),
                          );
                        },
                      ),

                      CardProduto(
                        nome: "Batata Frita",
                        preco: "12.00",
                        descricao: "Porção individual crocante.",
                        aoClicar: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TelaDetalhes(
                                nome: "Batata Frita",
                                preco: "12.00",
                                descricao: "Porção individual crocante.",
                                altura: altura,
                                destaque: "Produto mais crocante",
                              ),
                            ),
                          );
                        },
                      ),

                      CardProduto(
                        nome: "Suco Natural",
                        preco: "8.00",
                        descricao: "Suco gelado da fruta.",
                        aoClicar: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TelaDetalhes(
                                nome: "Suco Natural",
                                preco: "8.00",
                                descricao: "Suco gelado da fruta.",
                                altura: altura,
                                destaque: "Produto mais barato do cardápio",
                              ),
                            ),
                          );
                        },
                      ),

                      CardProduto(
                        nome: "Combo Especial",
                        preco: "28.00",
                        descricao: "X-Burguer, batata e suco.",
                        aoClicar: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TelaDetalhes(
                                nome: "Combo Especial",
                                preco: "28.00",
                                descricao: "X-Burguer, batata e suco.",
                                altura: altura,
                                destaque: "Produto mais vendido da semana",
                              ),
                            ),
                          );
                        },
                      ),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TelaPedido(),
                            ),
                          );
                        },
                        child: Text("Fazer Pedido"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            builder: (context) {
                              return Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      "Promoção do Dia",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    const Text(
                                      "Na compra de um X-Burguer, o suco sai pela metade do preço!",
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 20),
                                    SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text("Fechar"),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: const Text("Ver Promoção"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
