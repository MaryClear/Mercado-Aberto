import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mercado Abierto'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Color(0xfff5d415),
        shadowColor: Colors.transparent,

        leading: 
        Padding(
          padding: EdgeInsets.all(3.0),
        child: Icon(Icons.menu),
          ),
        
            title: Padding(
            padding: EdgeInsets.all(5.0),
            child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50),
          ),
              prefixIcon: const Icon(Icons.search),
              hintText:  'Buscar no Mercado Abierto',
          )
            )
          ),
          
        actions:<Widget> [
           Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(Icons.shopping_cart_outlined),
          )
        ],

        bottom: PreferredSize( 
          preferredSize: Size.fromHeight(50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Icon(Icons.fmd_good_outlined),
              Text('Enviar para Victor Hugo - Paulo Centrone, 340'), 
            ], 
          ),
      ),
        ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.5,0.2),
            colors: <Color>[
              Color(0xfff5d415),
             Color(0xfff5f5f5f5),
            ] 
            )
        )
      )
      );
  }
}
