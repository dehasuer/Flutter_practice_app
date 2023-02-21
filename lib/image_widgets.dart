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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    child: Image.asset(
                      "/Users/dehasuer/Desktop/Flutter_Apps/flutter_temel_widgets/assets/images/car.webp",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red.shade300,
                    width: 150,
                    height: 150,
                    child: Image.network(
                      _imgURL,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.red.shade300,
                      child: CircleAvatar(
                        child: Text(
                          "D",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        backgroundImage: NetworkImage(logo),
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.red,
                      )),
                ),
              ],
            ),
          ),
          IntrinsicHeight(
            child: Container(
              height: 200,
              child: FadeInImage.assetNetwork(
                  fit: BoxFit.cover,
                  placeholder: "assets/images/loading.gif",
                  image: _imgURL),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
