import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project/state_mangmt_provider/model/movie.dart';

final List<Movie> movielist = List.generate(
    100,
    (index) => Movie(
        title: "Movie $index", time: "${Random().nextInt(100) + 60} Minutes"));

class Movieprovider extends ChangeNotifier {
  final List<Movie> _movies = movielist; //make the movies private
  List<Movie> get movies =>
      _movies; //getter is used to make movies awailable everywhere
  final List<Movie> _wishlist = [];
  List<Movie> get wishlist => _wishlist;

  void addwishlist(Movie movi) {
    wishlist.add(movi);
    notifyListeners();
  }

  void removewishlist(Movie movi) {
    wishlist.remove(movi);
    notifyListeners();
  }
}
