
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRatingWidget extends StatelessWidget {
  const BookRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(Icons.star, color: Color(0xffFFDD4F), size: 20),
         const SizedBox(
          width: 6.3,
        ),
        Text("4.5", style: Styles.textStyle16),
         const SizedBox(
          width: 5,
        ),
        Text("(200)", style: Styles.textStyle14.copyWith(color: Color(0xff707070))),
      ],
    );
  }
}
