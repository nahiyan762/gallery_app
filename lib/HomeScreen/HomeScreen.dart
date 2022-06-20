import 'package:flutter/material.dart';
import 'package:gallery_app/widget/text_widget.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.centerLeft,
          height: MediaQuery.of(context).size.height,
          child: FittedBox(child: titleTextH1(context, "Gallery App")),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black,
        ),
      )
    );
  }
}
