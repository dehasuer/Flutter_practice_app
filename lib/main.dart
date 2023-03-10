import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/dropdown_buttons.dart';
import 'package:flutter_temel_widgets/image_widgets.dart';
import 'package:flutter_temel_widgets/my_counter_page.dart';
import 'package:flutter_temel_widgets/popupmenu_kullanimi.dart';
import 'package:flutter_temel_widgets/temel_button_turleri.dart';

void main() {
  debugPrint("main methodu çalıştu");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //değişmeyecek yapılar stateless widgetta olur.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("MyApp build methodu çalıştu");
    return MaterialApp(
      title: "My Counter App",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: TextTheme(
          headline1:
              TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button Örnekleri"),
          actions: [PopupMenuKullanimi()],
        ),
        body: PopupMenuKullanimi(),
      ),
    );
  }
}
