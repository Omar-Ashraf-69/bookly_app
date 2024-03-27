import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/models/book_model/volume_info.dart';
import 'package:flutter/material.dart';

class BookRatingWidget extends StatelessWidget {
  const BookRatingWidget({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rate,
  });
  final VolumeInfo rate;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star, color: Color(0xffFFDD4F), size: 20),
        const SizedBox(
          width: 6.3,
        ),
        Text(rate.averageRating ?? '0', style: Styles.textStyle16),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text('(${rate.ratingsCount})' ?? '(0)',
              style: Styles.textStyle14),
        ),
      ],
    );
  }
}
