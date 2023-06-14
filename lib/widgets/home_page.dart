import 'package:flutter/material.dart';

class home_page extends StatefulWidget {


  home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int qtdQuestions = 5;

  List<String> respostas =[];

  List<String> perguntas = [];

  TextEditingController pergunta = TextEditingController();

  void _deleteAllHist(){
    print('Deletando Todos os Históricos');
  }

  void _editUltimo(){
    print('Editando a ultima Solicitação');
  }

  void _saveStorege(){
    print('Editando a ultima Solicitação');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    minimum: const EdgeInsets.all(1),
    child: Scaffold(
          appBar: AppBar(
            leading:const Icon(Icons.menu_open_outlined),
            centerTitle: true,
            title: const Text("Chat GPT Android"),
            titleTextStyle: const TextStyle(fontSize: 32),
          ),
          body: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [/*ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Text("datasss");
                },),*/
                Row(
                  children: [IconButton(onPressed: _deleteAllHist, icon: const Icon(Icons.delete_forever_outlined)),
                  IconButton(onPressed: _editUltimo, icon: const Icon(Icons.edit)),
                  IconButton(onPressed: _saveStorege, icon: const Icon(Icons.save_outlined)),
                  Text("$qtdQuestions Pergunta(s)")],
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: pergunta ,
                          
                      ),
                    ),
                    const Icon(Icons.add_circle_outline,size: 32,)
                  ],
                )
              ],  
              ),
            ),
          )
          ),
        );
  }
}