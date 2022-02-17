import 'package:basic_dart/home.dart';
import 'package:flutter/material.dart';

//Função main para iniciar o App
void main() {
  runApp(
    //Serve para criar um layout orientado ao material design
    MaterialApp(
      //Desativar banner de debug
      debugShowCheckedModeBanner: false,
      //Tema do App
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //Interface inicial do App
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Title"),
          //Ações do AppBar apresentando dois botões
          actions: <Widget>[
            Icon(Icons.search),
            Icon(Icons.shopping_cart),
          ],
        ),
        //Menu de opções, no canto esquerdo do appbar
        drawer: Drawer(),
        //Corpo do App, onde vamos colocar lista de textos por exemplo
        body: Home(),
        //Botão flutuante do lado direito da tela
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        //Menu de navegação / Footer
        bottomNavigationBar: Row(
          children: <Widget>[
            Expanded(child: Icon(Icons.home)),
            Expanded(child: Icon(Icons.person)),
          ],
        ),
      ),
    ),
  );
}
