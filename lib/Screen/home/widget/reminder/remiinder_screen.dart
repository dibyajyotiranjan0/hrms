import 'package:flutter/material.dart';

import '../../../../static/color.dart';

class ReminderScreenWidget extends StatefulWidget {
  const ReminderScreenWidget({super.key});

  @override
  State<ReminderScreenWidget> createState() => _ReminderScreenWidgetState();
}

class _ReminderScreenWidgetState extends State<ReminderScreenWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
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
      length: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Reminder"),
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
            ],
          ),
          SizedBox(
            height: 250,
            child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(16),
                    // padding: EdgeInsets.all(32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border:
                            Border.all(color: Colo.blackShade45, width: 0.2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.all(29),
                          // minLeadingWidth: 50,
                          leading: Icon(
                            Icons.alarm_rounded,
                            color: Colo.primaryColor,
                            size: 40,
                          ),
                          title: Text("No item in you Tray1"),
                          subtitle: Text("items in yur tray will Appear here"),
                        ),
                        Divider(),
                        Align(
                          alignment: Alignment.center,
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                              label: Text("Create a Reminder")),
                        )
                      ],
                    ),
                  ),
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
                ]),
          )
        ],
      ),
    );
  }
}
