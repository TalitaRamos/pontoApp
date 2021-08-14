import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ponto_app/views/ui/Configuracao.dart';
import 'package:ponto_app/views/ui/Home.dart';
import 'package:ponto_app/views/ui/Relatorio.dart';

class InitPage extends StatefulWidget {
  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    Relatorio(Colors.deepOrange),
    Configuracao(Colors.green)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: MediaQuery.of(context).size.height * 0.14,
            centerTitle: true,
            shadowColor: Colors.greenAccent,
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80))),
            elevation: 20,
            flexibleSpace: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 20, bottom: 10),
                    child: Text(
                      'Olá, Talita!',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50, bottom: 20),
                    child: Text(
                      '19 de maio de 2021, quinta-feira',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: _children[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        backgroundColor: Colors.grey.shade200,
        selectedItemColor: Colors.lightGreen,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_rounded),
            label: 'Relatório',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
      ),
    ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
