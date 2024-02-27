import 'package:flutter/material.dart';

class HomeBannerUIScreen extends StatefulWidget {
  const HomeBannerUIScreen({super.key});

  @override
  State<HomeBannerUIScreen> createState() => _HomeBannerUIScreenState();
}

class _HomeBannerUIScreenState extends State<HomeBannerUIScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 240,
        width: MediaQuery.of(context).size.width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            14.0,
          ),
          child: Image.asset(
            'assets/images/home_dummy1.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
