import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obonstore/controllers/classes/Utilities/Utils/utils.dart';
import 'package:obonstore/controllers/classes/home/home_ui/banner/banner_ui.dart';
import 'package:obonstore/controllers/classes/home/home_ui/female_ui/female_ui.dart';
import 'package:obonstore/controllers/classes/home/home_ui/male_ui/male_ui.dart';

// import 'package:carousel_grid/carousel_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> trendingURL = [
    'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?q=80&w=4625&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1595341888016-a392ef81b7de?q=80&w=4479&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1514989940723-e8e51635b782?q=80&w=4740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1663100769321-9eb8fe5a8e6b?q=80&w=4472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1516478177764-9fe5bd7e9717?q=80&w=4740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    /*'https://images.unsplash.com/photo-1604671801908-6f0c6a092c05?q=80&w=4740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1610398752800-146f269dfcc8?q=80&w=3945&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1535043934128-cf0b28d52f95?q=80&w=2880&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',*/
  ];
  List<String> shoesURL = [
    'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=4740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1549298916-b41d501d3772?q=80&w=4624&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?q=80&w=4598&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?q=80&w=4000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1560769629-975ec94e6a86?q=80&w=2898&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    /*'https://plus.unsplash.com/premium_photo-1682125177822-63c27a3830ea?q=80&w=4587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1543508282-6319a3e2621f?q=80&w=3448&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',*/
  ];
  List<String> ourSpecialURL = [
    'https://images.unsplash.com/photo-1600185365926-3a2ce3cdb9eb?q=80&w=4625&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1562183241-b937e95585b6?q=80&w=3505&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1661780784016-84df03d7d8a8?q=80&w=4506&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1595341888016-a392ef81b7de?q=80&w=4479&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    /*'https://images.unsplash.com/photo-1603808033192-082d6919d3e1?q=80&w=3000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1575537302964-96cd47c06b1b?q=80&w=4740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1663127400261-d0ef8b8499d4?q=80&w=4501&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1587563871167-1ee9c731aefb?q=80&w=4662&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'*/
  ];
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const HomeBannerUIScreen(),
            //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    textWithBoldStyle(
                      'Trending',
                      Colors.black,
                      24.0,
                    ),
                    textWithRegularStyle(
                      ' this week',
                      Colors.black,
                      12.0,
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  for (int i = 0; i < trendingURL.length; i++) ...[
                    Column(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              14.0,
                            ),
                            child: Image.network(
                              //
                              trendingURL[i],
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        textWithRegularStyle(
                          'Name ${i + 1}',
                          Colors.black,
                          14.0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                  ]
                ],
              ),
            ),
            //
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    textWithBoldStyle(
                      'Best Seller',
                      Colors.black,
                      24.0,
                    ),
                  ],
                ),
              ),
            ),
            //
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  for (int i = 0; i < shoesURL.length; i++) ...[
                    Column(
                      children: [
                        SizedBox(
                          height: 160,
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              14.0,
                            ),
                            child: Image.network(
                              //
                              shoesURL[i].toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        textWithRegularStyle(
                          'Name ${i + 1}',
                          Colors.black,
                          14.0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                  ]
                ],
              ),
            ),
            //
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      textWithBoldStyle(
                        'Our Special',
                        Colors.black,
                        24.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10.0,
                  ),
                  for (int i = 0; i < ourSpecialURL.length; i++) ...[
                    Column(
                      children: [
                        SizedBox(
                          height: 160,
                          width: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              14.0,
                            ),
                            child: Image.network(
                              //
                              ourSpecialURL[i].toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        textWithRegularStyle(
                          'Name ${i + 1}',
                          Colors.black,
                          14.0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                  ]
                ],
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
/*CarouselGrid(
            height: 285,
            width: 400,
            listUrlImages: [
              "https://plus.unsplash.com/premium_photo-1708983589793-56673027592e?q=80&w=4738&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              "https://images.unsplash.com/photo-1683009427500-71296178737f?q=80&w=4742&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              "https://images.unsplash.com/photo-1708861177937-70c66c166609?q=80&w=4472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              "https://plus.unsplash.com/premium_photo-1708983589793-56673027592e?q=80&w=4738&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              "https://images.unsplash.com/photo-1707343844152-6d33a0bb32c3?q=80&w=4740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              "https://images.unsplash.com/photo-1708923780957-b934c19304df?q=80&w=4587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              "https://images.unsplash.com/photo-1708834311412-243b8277056f?q=80&w=4160&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              "https://images.unsplash.com/photo-1708918026054-20f92b4d8fcc?q=80&w=2000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ],
            iconBack: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),*/