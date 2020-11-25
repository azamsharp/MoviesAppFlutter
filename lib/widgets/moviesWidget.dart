

import 'package:flutter/material.dart';
import 'package:hello_movies/models/movie.dart';

class MoviesWidget extends StatelessWidget {

  final List<Movie> movies; 

  MoviesWidget({this.movies});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: movies.length,
      itemBuilder: (context, index) {

        final movie = movies[index];

        return ListTile(
          title: Row(children: [
            SizedBox(
              width: 100, 
              child: ClipRRect(
                child: Image.network(movie.poster), 
                borderRadius: BorderRadius.circular(10),
              )
             
            ), 
            Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,  
                  children: [
                  Text(movie.title),
                  Text(movie.year)
              ],),
                ),
            )
          ],)
        );
      }
    );
    
  }

}