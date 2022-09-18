import 'package:flutter/material.dart';
import 'package:moviez_streaming_app/theme.dart';
import 'package:moviez_streaming_app/widgets/movie_card.dart';
import 'package:moviez_streaming_app/widgets/movie_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: defaultMargin, top: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Moviez',
                            style: purpleTextStyle.copyWith(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            )),
                        Text('Watch much easier',
                            style: greyTextStyle.copyWith(
                              fontSize: 16,
                            )),
                      ],
                    ),
                    Spacer(),
                    Image.asset('assets/images/btn_search.png'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MovieCard(
                        image: 'assets/images/johnwick.png',
                        title: 'John Wick 4',
                        genre: 'Action',
                        rating: 3,
                      ),
                      MovieCard(
                        image: 'assets/images/bohemian.png',
                        title: 'Bohemian',
                        genre: 'Documentary',
                        rating: 3,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'From Disney',
                  style: purpleTextStyle.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(
                  height: 20,
                ),
                MovieList(
                    image: 'assets/images/mulan.png',
                    title: 'Mulan Session',
                    genre: 'History, War',
                    rating: 3),
                MovieList(
                    image: 'assets/images/beautynbeast.png',
                    title: 'Beauty & Beast',
                    genre: 'Sci-Fiction',
                    rating: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
