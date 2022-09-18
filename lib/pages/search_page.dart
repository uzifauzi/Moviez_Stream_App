import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:moviez_streaming_app/models/movie_models.dart';
import 'package:moviez_streaming_app/theme.dart';
import 'package:moviez_streaming_app/widgets/movie_list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  void updateList(String value) {
    setState(() {
      displayList = film
          .where((element) =>
              element.title.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  //creating the list that we're going to display and filter
  List<Movie> displayList = List.from(film);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 38),
        child: Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              width: 327,
              height: 45,
              child: TextField(
                onChanged: (value) => updateList(value),
                style: purpleTextStyle.copyWith(fontSize: 16),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: whiteColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                  prefix: Image.asset(
                    'assets/images/btn_search.png',
                    width: 32,
                    height: 22,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Text(
                  'Search Result ',
                  style: purpleTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  '(${displayList.length.toString()})',
                  style: purpleTextStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              //if don't get data
              child: displayList.length == 0
                  ? Center(
                      child: Text(
                        'No result found',
                        style: greyTextStyle.copyWith(fontSize: 16),
                      ),
                    )
                  : ListView.builder(
                      itemCount: displayList.length,
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            MovieList(
                                image: displayList[index].image,
                                title: displayList[index].title,
                                genre: displayList[index].genre,
                                rating: displayList[index].rating!),
                          ],
                        );
                      }),
                    ),
            ),
            SizedBox(
              height: 73,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(220, 60),
                  primary: purpleColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(37),
                  ),
                ),
                child: Text(
                  'Suggest Movie',
                  style: greyTextStyle.copyWith(
                    color: whiteColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
