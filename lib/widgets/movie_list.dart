import 'package:flutter/material.dart';
import 'package:moviez_streaming_app/theme.dart';

class MovieList extends StatelessWidget {
  final String image;
  final String title;
  final String genre;
  final int rating;

  const MovieList({
    Key? key,
    required this.image,
    required this.title,
    required this.genre,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        children: [
          Container(
            height: 127,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(image),
                )),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: purpleTextStyle.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                genre,
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
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
