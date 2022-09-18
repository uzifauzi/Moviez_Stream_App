import 'package:flutter/material.dart';
import 'package:moviez_streaming_app/theme.dart';

class MovieCard extends StatelessWidget {
  final String image;
  final String title;
  final String genre;
  final int rating;
  const MovieCard({
    Key? key,
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      child: Column(
        children: [
          Container(
            width: 300,
            height: 207,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
              ),
              borderRadius: BorderRadius.circular(21),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: purpleTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    genre,
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: rating >= 1 ? yellowColor : greyColor,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 2 ? yellowColor : greyColor,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 3 ? yellowColor : greyColor,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 4 ? yellowColor : greyColor,
                  ),
                  Icon(
                    Icons.star,
                    color: rating >= 5 ? yellowColor : greyColor,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
