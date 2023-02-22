import 'package:flutter/material.dart';

class DropDownButtonKullanimi extends StatefulWidget {
  const DropDownButtonKullanimi({super.key});

  @override
  State<DropDownButtonKullanimi> createState() =>
      _DropDownButtonKullanimiState();
}

class _DropDownButtonKullanimiState extends State<DropDownButtonKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = [
    "Ankara",
    "Bursa",
    "İzmir",
    "İstanbul",
    "Adıyaman",
    "Muğla",
    "Aydın"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Şehir seçiniz."),
        icon: Icon(Icons.arrow_downward),
        iconSize: 32,
        underline: Container(
          height: 4,
          color: Colors.amber,
        ),
        /* items: [
          DropdownMenuItem(
            child: Text("Antalya City"),
            value: "Antalya",
          ),
          DropdownMenuItem(
            child: Text("İzmir City"),
            value: "İzmir",
          ),
          DropdownMenuItem(
            child: Text("Fethiye City"),
            value: "Fethiye",
          ),
        ], */
        items: _tumSehirler
            .map(
              (String sehir) => DropdownMenuItem(
                child: Text(sehir),
                value: sehir,
              ),
            )
            .toList(),
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}
