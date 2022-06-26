// ignore_for_file: import_of_legacy_library_into_null_safe, unused_local_variable
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/icon_map.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(
    MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

Color backgroundColor = Color.fromARGB(232, 86, 7, 129);
Color secondaryPurple = Color.fromARGB(232, 148, 76, 184);

class Home extends StatefulWidget{
  @override 
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: _body(),
    );
  }
  _body() {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _icone(),
              _corpo(),
              _opcoes(),
              _texto(),
              _opcoes2(),
              _texto2(),
              _opcoes3(),
              _texto3(),
              Divider(
                thickness: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _icone() {
    return Container(
      margin: EdgeInsets.all(10),
     
      child: Icon(
          MdiIcons.creditCard,
        ),
    );
  }

  _corpo(){
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: EdgeInsets.only(left: 20, top: 110),
      padding: EdgeInsets.all(20),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: 'Fatura atual \n', style: TextStyle(color: Colors.black)),
            TextSpan(text: r'R$ 1.258,40', style: TextStyle(fontSize: 30, color: Colors.black)),
            TextSpan(text: '\n Limite disponível', style: TextStyle(color: Colors.black)),
            TextSpan(text: r'R$ 4.012,60', style: TextStyle( color: Colors.green)),
            TextSpan(text: '\n\nVocê fez 46 compras e o maior gasto foi de', style: TextStyle(color: Colors.black)),
            TextSpan(text: r' R$ 323,46 em Uber.', style: TextStyle(color: Colors.black)),
          ],
        )
      ),
    );
  }
  
  _opcoes() {
    return Container(
        child: Icon(
          MdiIcons.barcode,
          size: 50,
          color: Colors.purple,
          )
     );
  }
  
  _texto(){
    return Container(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: 'Pagar fatura', style: TextStyle(color: Colors.black)),
          ],
        )
      ),
    );
  }


  _opcoes2() {
    return Container(
        child: Icon(
          MdiIcons.listStatus,
          size: 50,
          color: Colors.purple,
          )
     );
  }

  _texto2(){
    return Container(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: 'Resumo de faturas', style: TextStyle(color: Colors.black)),
          ],
        )
      ),
    );
  }

  _opcoes3() {
    return Container(
        child: Icon(
          MdiIcons.bookEdit,
          size: 50,
          color: Colors.purple,
          )
     );
  }

  _texto3(){
    return Container(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: 'Ajusta limite', style: TextStyle(color: Colors.black)),
          ],
        )
      ),
    );
  }
  
}