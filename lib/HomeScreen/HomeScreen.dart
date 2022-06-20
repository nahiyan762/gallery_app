import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
            padding: EdgeInsets.only(left: 16, right: 16),
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
                  child: GridView.custom(
                    gridDelegate: SliverStairedGridDelegate(
                      crossAxisSpacing: 48,
                      mainAxisSpacing: 24,
                      startCrossAxisDirectionReversed: true,
                      pattern: [
                        StairedGridTile(0.5, 1),
                        StairedGridTile(0.5, 3 / 4),
                        StairedGridTile(1.0, 10 / 4),
                      ],
                    ),
                    childrenDelegate: SliverChildBuilderDelegate(
                          (context, index) => Text('Hello'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
