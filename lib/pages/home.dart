import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Image.network(
              "https://reqres.in/img/faces/8-image.jpg",
            ),
          ],
        )
      ],
    );
  }
}
