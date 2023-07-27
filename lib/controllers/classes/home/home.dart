import 'package:flutter/material.dart';
import 'package:obonstore/controllers/classes/Utilities/Utils/utils.dart';
import 'package:obonstore/controllers/classes/home/home_ui/female_ui/female_ui.dart';
import 'package:obonstore/controllers/classes/home/home_ui/male_ui/male_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: textWithRegularStyle(
          'Home',
          Colors.black,
          16.0,
        ),
        elevation: 2,
        backgroundColor: lightPinkColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
      ),
      body: const Row(
        children: [
          //
          HomeMaleIconUI(),
          //
          HomeFemaleIconUI()
          //
        ],
      ),
    );
  }
}
