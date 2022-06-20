import 'package:flutter/material.dart';
import 'package:gallery_app/widget/text_widget.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Align(
              alignment: Alignment.centerLeft,
              child: titleTextH1(context, "Gallery App")),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      prefixIcon:
                          const Icon(Icons.search_rounded, color: Colors.black),
                      hintText: 'Search',
                      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      isDense: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.6))),
                ),
                Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Text('hello')
                        );
                      },
                    ))
              ],
            ),
          ),
        ));
  }
}
