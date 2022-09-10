import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/tabs/feed_page.dart';

import '../widgets/custom_bottom_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const FeedPage(),
      Center(
        child: Text('second page'),
      ),
      Center(
        child: Text('third page'),
      ),
      Center(
        child: Text('fourth page'),
      ),
    ];
    return Scaffold(
      body: pages[navIndex],
      bottomNavigationBar: CustomBottomNav(
        navIndex: navIndex,
        onTap: (index) {
          navIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
