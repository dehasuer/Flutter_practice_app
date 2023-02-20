import 'package:flutter/material.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgURL =
        "https://www.ccarprice.com/products/Lamborghini_Aventador_Ultimae_LP780-4_2022.jpg";
    String logo =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEwJPZ4itSePdjATL65qFlgKFb-mr4vUO__g&usqp=CAU";
    return Center(
      child: Column(
        children: [
          Container(
            color: Colors.red.shade300,
            width: 150,
            height: 150,
            child: Image.asset(
              "/Users/dehasuer/Desktop/Flutter_Apps/flutter_temel_widgets/assets/images/car.webp",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.red.shade300,
            width: 150,
            height: 150,
            child: Image.network(
              _imgURL,
              fit: BoxFit.fill,
            ),
          ),
          Container(
              color: Colors.red.shade300,
              child: CircleAvatar(
                child: Text(
                  "D",
                  style: Theme.of(context).textTheme.headline1,
                ),
                backgroundImage: NetworkImage(logo),
                backgroundColor: Colors.amber,
                foregroundColor: Colors.red,
                radius: 90,
              )),
        ],
      ),
    );
  }
}
