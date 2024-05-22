import "package:flutter/material.dart";
import "package:movie_app/widgets/widgets.dart";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Movies at the Movies',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined),
              color: Colors.white,
            )
          ],
        ),
        body: const Column(
          children: [
            CardSwiper(),

          ],
        ));
  }
}
