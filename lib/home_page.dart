import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> servicos = [
    {
      "titulo": "Corte de Cabelo",
      "descricao":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "preco": 50.00,
      "imagemUrl": "https://via.placeholder.com/150"
    },
    {
      "titulo": "Manicure e Pedicure",
      "descricao":
          "Text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "preco": 35.00,
      "imagemUrl": "https://via.placeholder.com/150"
    },
    {
      "titulo": "Mecânico de Auto",
      "descricao":
          "Printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "preco": 100.00,
      "imagemUrl": "https://via.placeholder.com/150"
    },
    {
      "titulo": "Aula de Infomática",
      "descricao":
          "Standard printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
      "preco": 150.00,
      "imagemUrl": "https://via.placeholder.com/150"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BookMeNow"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: const [
            SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                padding: EdgeInsets.symmetric(vertical: 28, horizontal: 16),
                child: Text(
                  "Olá, Edson",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.login),
              // trailing: Icon(Icons.login),
              title: Text("Login"),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text("Serviços"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Dúvidas"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Sobre o BookMeNow"),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: servicos.length,
        itemBuilder: (context, index) {
          final servico = servicos[index];
          return Card(
            elevation: 0.5,
            margin: const EdgeInsets.all(8.0),
            color: const Color(0xFFfcfcfc),
            child: Row(
              children: [
                Image.network(
                  servico['imagemUrl'],
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          servico['titulo'],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          servico['descricao'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          'R\$ ${servico['preco'].toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
