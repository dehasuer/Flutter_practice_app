import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text("Text Button"),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Text Button with Icon"),
        ),
        ElevatedButton(
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
