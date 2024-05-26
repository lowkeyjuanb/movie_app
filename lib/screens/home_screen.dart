import "package:flutter/material.dart";
import "package:movie_app/providers/movies_provider.dart";
import "package:movie_app/widgets/widgets.dart";
import "package:provider/provider.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context);
    
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Main Cards
              CardSwiper(movies: moviesProvider.onDisplayMovies),
          
              //Movie Slider
              MovieSlider(movies: moviesProvider.popularMovies, title: 'Populares')
          
            ],
          ),
        ));
  }
}
