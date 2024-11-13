import 'dart:ui';

import 'package:flutter/material.dart';

import 'widget/calendar/calendar_screen_widget.dart';
import 'widget/favorites/favouirties_widget_screen.dart';
import 'widget/legacy_comment/lagancy_assigned_comment_widgeet.dart';
import 'widget/legacy_my_work/lagacy_my_work_screen.dart';
import 'widget/my_work/my_work_screen.dart';
import 'widget/recent/recent_screen.dart';
import 'widget/reminder/remiinder_screen.dart';
import 'widget/tray/tray_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          physics: BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text('Nested ScrollView Example'),
                floating: true,
                snap: true,
                pinned: true,
                backgroundColor: Colors.white,
                // expandedHeight: 20.0,
                // flexibleSpace: FlexibleSpaceBar(
                //   background: Image.network(
                //     "https://via.placeholder.com/350x150",
                //     fit: BoxFit.cover,
                //   ),
                // ),
                // flexibleSpace: FlexibleSpaceBar(
                //   collapseMode: CollapseMode.pin,
                //   background: Container(
                //     color: Colors.blue,
                //     // child: Stack(
                //     //   fit: StackFit.expand,
                //     //   children: <Widget>[
                //     //     // Image.network(
                //     //     //   "https://via.placeholder.com/350x150",
                //     //     //   fit: BoxFit.cover,
                //     //     // ),
                //     //     Container(
                //     //       decoration: BoxDecoration(
                //     //         gradient: LinearGradient(
                //     //           colors: [Colors.transparent, Colors.blue],
                //     //           begin: Alignment.topCenter,
                //     //           end: Alignment.bottomCenter,
                //     //         ),
                //     //       ),
                //     //     ),
                //     //   ],
                //     // ),
                //   ),
                // ),
              ),
            ];
          },
          body: ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(8.0),
            children: [
              recentScreen(context),
              trayWidget(context),
              MyWorkScreen(),
              ReminderScreenWidget(),
              CalendarScreenWidget(context),
              LagencyMyworkScreen(),
              lagancyCommentWidget(context),
              favoriteWidget(context)
            ],
          )),
    );
  }
}
