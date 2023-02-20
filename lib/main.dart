import 'package:flutter/material.dart';

void main() {
  debugPrint("main methodu çalıştu");
  runApp(MyApp());
}

class MyApp extends StatelessWidget { //değişmeyecek yapılar stateless widgetta olur.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("MyApp build methodu çalıştu");
    return MaterialApp(
      title: "My Counter App",
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget { //değişecek işlemleri stateful widgetta yapılır.
  
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePage build methodu çalıştu");
    return Scaffold(
      appBar: AppBar(
        title: Text("My Counter AppBar"), //üstteki title'ın olduğu kısım
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //yazıyı ortalamak için
          children: [
            Text(
              "Butona basılma miktarı",
              style: TextStyle(fontSize: 24),
            ),
            Text(
              _sayac.toString(),
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("button tıklandı");
          sayaciArttir();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {}); //set state ile hotreload yapmadan değeri ekrana yazdırabiliyoruz.
    _sayac++;
  }
}
