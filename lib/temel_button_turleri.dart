import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint("Uzun basıldı");
          },
          style: TextButton.styleFrom(backgroundColor: Colors.red),
          child: Text("Text Button"),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.black;
                }
                if (states.contains(MaterialState.hovered)) {
                  return Colors.blue;
                }
                return null;
              }),
              foregroundColor: MaterialStateProperty.all(Colors.amber),
              overlayColor: MaterialStateProperty.all(
                Colors.yellow.withOpacity(0.5),
              )),
          icon: Icon(Icons.add),
          label: Text("Text Button with Icon"),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.red, onPrimary: Colors.amber),
          onPressed: () {},
          child: Text("Elevated Button"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Elevated Button with Icon"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("Outlined Button"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Outlined Button with Icon"),
        ),
      ],
    );
  }
}
