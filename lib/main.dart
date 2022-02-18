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
        primarySwatch: Colors.indigo,
      ),
      //Interface inicial do App
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          title: const Text("App Title", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
          //Ações do AppBar apresentando dois botões
          actions: const <Widget>[
            Icon(Icons.search, color: Colors.black,),
            Icon(Icons.shopping_cart, color: Colors.black,),
          ],
        ),
        //Menu de opções, no canto esquerdo do appbar
        drawer: const Drawer(),
        //Corpo do App, onde vamos colocar lista de textos por exemplo
        body: Home(),
        //Botão flutuante do lado direito da tela
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add, color: Colors.black,),
          onPressed: () {},
        ),
        //Menu de navegação / Footer
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home, color: Colors.black,),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.black,),
              label: "Account",
            ),
          ],
        ),
      ),
    ),
  );
}
