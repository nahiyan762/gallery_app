import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gallery_app/widget/text_widget.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List img = [
    "https://images.unsplash.com/photo-1655578111000-a0b500b70e93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1655578111000-a0b500b70e93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1655578111000-a0b500b70e93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1655578111000-a0b500b70e93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1655578111000-a0b500b70e93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1655578111000-a0b500b70e93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1655578111000-a0b500b70e93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1655578111000-a0b500b70e93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1655578111000-a0b500b70e93?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8QkpKTXR0ZURKQTR8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60"
  ];

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
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search_rounded,
                            color: Colors.black),
                        hintText: 'Search',
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        isDense: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.6))),
                  ),
                  Expanded(
                    child: GridView.custom(
                      gridDelegate: SliverWovenGridDelegate.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        pattern: const [
                           WovenGridTile(1),
                          WovenGridTile(5 / 7,
                            crossAxisRatio: 0.9,
                            alignment: AlignmentDirectional.centerEnd,
                          ),
                        ],
                      ),
                      childrenDelegate: SliverChildBuilderDelegate(

                        (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                img[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ]))));
  }
}
