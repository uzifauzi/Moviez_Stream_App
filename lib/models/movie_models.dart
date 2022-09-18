class Movie {
  String title;
  String genre;
  String image;
  int? rating;

  Movie(
    this.title,
    this.genre,
    this.image,
    this.rating,
  );
}

List<Movie> film = [
  Movie('John Wick 4', 'Action', 'assets/images/johnwick.png', 5),
  Movie('Bohemian', 'Documentary', 'assets/images/bohemian.png', 3),
  Movie('Mulan Session', 'History, War', 'assets/images/mulan.png', 3),
  Movie('Beauty & Beast', 'Sci-Fiction', 'assets/images/beautynbeast.png', 5),
  Movie('The Dark II', 'Horror', 'assets/images/thedark2.png', 5),
  Movie('The Dark Knight', 'Heroes', 'assets/images/thedarkknight.png', 5),
  Movie('The Dark Tower', 'Action', 'assets/images/thedarktower.png', 4),
];
