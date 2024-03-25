
import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/Logo.png',
            height: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 28,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
