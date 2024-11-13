import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hrms/static/color.dart';

class MyWorkScreen extends StatefulWidget {
  const MyWorkScreen({super.key});

  @override
  State<MyWorkScreen> createState() => _MyWorkScreenState();
}

class _MyWorkScreenState extends State<MyWorkScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    _tabController = TabController(initialIndex: 0, length: 7, vsync: this);
    //   setState(() {});
    // });
  }

  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Tray"),
              TextButton(onPressed: () {}, child: Text("See all"))
            ],
          ),
          TabBar(
            splashFactory: NoSplash.splashFactory,
            controller: _tabController,
            padding: EdgeInsets.zero,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            indicatorColor: Colors.transparent,
            dividerColor: Colors.transparent,
            dividerHeight: 0,
            labelPadding: EdgeInsets.only(left: 0, right: 10),
            tabs: [
              Tab(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colo.primaryColor.withOpacity(0.1)),
                  child: Text("Today1"),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colo.primaryColor.withOpacity(0.1)),
                  child: Text("Overdue2"),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colo.primaryColor.withOpacity(0.1)),
                  child: Text("Next3"),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colo.primaryColor.withOpacity(0.1)),
                  child: Text("Today4"),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colo.primaryColor.withOpacity(0.1)),
                  child: Text("Overdue5"),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colo.primaryColor.withOpacity(0.1)),
                  child: Text("Today6"),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colo.primaryColor.withOpacity(0.1)),
                  child: Text("Overdue7"),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.all(8),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8), color: Colors.yellow),
              //   child: Text("Next8"),
              // ),
              // Container(
              //   padding: EdgeInsets.all(8),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8), color: Colors.yellow),
              //   child: Text("Today9"),
              // ),
              // Container(
              //   padding: EdgeInsets.all(8),
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(8), color: Colors.yellow),
              //   child: Text("Overdue11"),
              // ),
            ],
          ),
          SizedBox(
            height: 150,
            child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  Container(
                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.all(32),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: Colo.blackShade45, width: 0.2)),
                      child: ListTile(
                        // minLeadingWidth: 50,
                        leading: Icon(
                          Icons.download,
                          color: Colo.primaryColor,
                          size: 40,
                        ),
                        title: Text("No item in you Tray1"),
                        subtitle: Text("items in yur tray will Appear here"),
                      )),
                  Container(
                      // margin: EdgeInsets.only(left: ),
                      padding: EdgeInsets.all(32),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: Colo.blackShade45, width: 0.2)),
                      child: ListTile(
                        // minLeadingWidth: 50,
                        leading: Icon(
                          Icons.download,
                          color: Colo.primaryColor,
                          size: 40,
                        ),
                        title: Text("No item in you Tray2"),
                        subtitle: Text("items in yur tray will Appear here"),
                      )),
                  Container(
                      // margin: EdgeInsets.only(left: ),
                      padding: EdgeInsets.all(32),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: Colo.blackShade45, width: 0.2)),
                      child: ListTile(
                        // minLeadingWidth: 50,
                        leading: Icon(
                          Icons.download,
                          color: Colo.primaryColor,
                          size: 40,
                        ),
                        title: Text("No item in you Tray3"),
                        subtitle: Text("items in yur tray will Appear here"),
                      )),
                  Container(
                      // margin: EdgeInsets.only(left: ),
                      padding: EdgeInsets.all(32),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: Colo.blackShade45, width: 0.2)),
                      child: ListTile(
                        // minLeadingWidth: 50,
                        leading: Icon(
                          Icons.download,
                          color: Colo.primaryColor,
                          size: 40,
                        ),
                        title: Text("No item in you Tray4"),
                        subtitle: Text("items in yur tray will Appear here"),
                      )),
                  Container(
                      // margin: EdgeInsets.only(left: ),
                      padding: EdgeInsets.all(32),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: Colo.blackShade45, width: 0.2)),
                      child: ListTile(
                        // minLeadingWidth: 50,
                        leading: Icon(
                          Icons.download,
                          color: Colo.primaryColor,
                          size: 40,
                        ),
                        title: Text("No item in you Tray5"),
                        subtitle: Text("items in yur tray will Appear here"),
                      )),
                  Container(
                      // margin: EdgeInsets.only(left: ),
                      padding: EdgeInsets.all(32),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: Colo.blackShade45, width: 0.2)),
                      child: ListTile(
                        // minLeadingWidth: 50,
                        leading: Icon(
                          Icons.download,
                          color: Colo.primaryColor,
                          size: 40,
                        ),
                        title: Text("No item in you Tray6"),
                        subtitle: Text("items in yur tray will Appear here"),
                      )),
                  Container(
                      // margin: EdgeInsets.only(left: ),
                      padding: EdgeInsets.all(32),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: Colo.blackShade45, width: 0.2)),
                      child: ListTile(
                        // minLeadingWidth: 50,
                        leading: Icon(
                          Icons.download,
                          color: Colo.primaryColor,
                          size: 40,
                        ),
                        title: Text("No item in you Tray7"),
                        subtitle: Text("items in yur tray will Appear here"),
                      )),
                  // Container(
                  //     // margin: EdgeInsets.only(left: ),
                  //     padding: EdgeInsets.all(32),
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         border:
                  //             Border.all(color: Colo.blackShade45, width: 0.2)),
                  //     child: ListTile(
                  //       // minLeadingWidth: 50,
                  //       leading: Icon(
                  //         Icons.download,
                  //         color: Colo.primaryColor,
                  //         size: 40,
                  //       ),
                  //       title: Text("No item in you Tray8"),
                  //       subtitle: Text("items in yur tray will Appear here"),
                  //     )),
                  // Container(
                  //     // margin: EdgeInsets.only(left: ),
                  //     padding: EdgeInsets.all(32),
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         border:
                  //             Border.all(color: Colo.blackShade45, width: 0.2)),
                  //     child: ListTile(
                  //       // minLeadingWidth: 50,
                  //       leading: Icon(
                  //         Icons.download,
                  //         color: Colo.primaryColor,
                  //         size: 40,
                  //       ),
                  //       title: Text("No item in you Tray9"),
                  //       subtitle: Text("items in yur tray will Appear here"),
                  //     )),
                  // Container(
                  //     // margin: EdgeInsets.only(left: ),
                  //     padding: EdgeInsets.all(32),
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         border:
                  //             Border.all(color: Colo.blackShade45, width: 0.2)),
                  //     child: ListTile(
                  //       // minLeadingWidth: 50,
                  //       leading: Icon(
                  //         Icons.download,
                  //         color: Colo.primaryColor,
                  //         size: 40,
                  //       ),
                  //       title: Text("No item in you Tray10"),
                  //       subtitle: Text("items in yur tray will Appear here"),
                  //     )),
                ]),
          )
        ],
      ),
    );
  }
}
