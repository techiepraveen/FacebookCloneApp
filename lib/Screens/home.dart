import 'package:facebook_clone/Screens/feed.dart';
import 'package:flutter/material.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

import 'Group.dart';

//import 'Group.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final controller = ScrollController();

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ScrollAppBar(
        controller: controller,
        backgroundColor: Colors.white,
        title: Text(
          'facebook',
          style: TextStyle(
            fontFamily: 'Nunito',
            color: Colors.blue[700],
            fontSize: 30,
          ),
        ),
        actions: [
          Row(
            children: [
              _appBarAction(FontAwesomeIcons.search),
              _appBarAction(FontAwesomeIcons.facebookMessenger),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            child: TabBar(
              controller: tabController,
              labelPadding: EdgeInsets.all(1),
              tabs: [
                Tab(
                  icon: Icon(
                    Ionicons.home,
                    color: Colors.blue,
                    size: 30,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Ionicons.tv_outline,
                    color: Colors.grey[700],
                    size: 30,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Ionicons.people_circle_outline,
                    color: Colors.grey[700],
                    size: 30,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.house_outlined,
                    color: Colors.grey[700],
                    size: 30,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Ionicons.notifications_outline,
                    color: Colors.grey[700],
                    size: 30,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.grey[700],
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: TabBarView(controller: tabController, children: [
                SingleChildScrollView(
                    controller: controller, child: Feedpage()),
                Group(),
                //Home(),
                Watch(),
                Account(),
                Notifications(),
                More(),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _appBarAction(IconData icon) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    ),
  );
}
