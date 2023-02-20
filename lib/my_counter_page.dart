import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
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
              style: Theme.of(context).textTheme.headline1,
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
    setState(() {
      _sayac++;
    });
    //set state ile hotreload yapmadan değeri ekrana yazdırabiliyoruz.
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Butona basılma miktarı",
      style: TextStyle(fontSize: 24),
    );
  }
}
