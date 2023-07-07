import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslatorPage extends StatelessWidget {
  const TranslatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final myAppbar = AppBar(
      title: Text("Translator"),
    );

    final bodyHeight = size.height -
        myAppbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: myAppbar,
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            width: size.width,
            height: bodyHeight * 0.6,
          ),
          Container(
            color: Colors.white,
            width: size.width,
            height: bodyHeight * 0.3,
            child: Center(child: Text("asdsa")),
          )
        ],
      ),
    );
  }
}
