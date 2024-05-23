import 'package:flutter/material.dart';
import 'movie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cartelera'),
        ),
        body: MovieList(),
      ),
    );
  }
}

class MovieList extends StatelessWidget {
  final List<Movie> movies = [
    Movie('Inception', '2010', 'Ciencia ficción', 'assets/images/inception.jpg', '2h 28m'),
    Movie('The Matrix', '1999', 'Acción', 'assets/images/matrix.jpg', '2h 16m'),
    Movie('Interstellar', '2014', 'Ciencia ficción', 'assets/images/interstellar.jpg', '2h 49m'),
    Movie('Parasite', '2019', 'Drama', 'assets/images/parasite.jpg', '2h 12m'),
    Movie('The Godfather', '1972', 'Crimen', 'assets/images/godfather.jpg', '2h 55m'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return Card(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(movie.img, fit: BoxFit.cover),
              ListTile(
                title: Text(movie.titulo),
                subtitle: Text('${movie.genero} - ${movie.duracion}\n${movie.fecha}'),
              ),
            ],
          ),
        );
      },
    );
  }
}
