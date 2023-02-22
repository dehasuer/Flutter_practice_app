import 'package:flutter/material.dart';

class PopupMenuKullanimi extends StatefulWidget {
  const PopupMenuKullanimi({super.key});

  @override
  State<PopupMenuKullanimi> createState() => _PopupMenuKullanimiState();
}

class _PopupMenuKullanimiState extends State<PopupMenuKullanimi> {
  String _secilenSehir = "Bursa";
  List<String> renkler = ["Mavi", "Kırmızı", "Sarı", "Yeşil"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String sehir) {
          setState(() {
            _secilenSehir = sehir;
          });
        },
        //child: Text(_secilenSehir),
        itemBuilder: (BuildContext context) {
          return renkler
              .map(
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
          /* return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("Ankara"),
              value: "Ankara",
            ),
            PopupMenuItem(
              child: Text("Bursa"),
              value: "Bursa",
            ),
            PopupMenuItem(child: Text("Van"), value: "Van"),
          ]; */
        },
      ),
    );
  }
}
