import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.39,
      child: AspectRatio(
        aspectRatio: 1.3 / 2,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
