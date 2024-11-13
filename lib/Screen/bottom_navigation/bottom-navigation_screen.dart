import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../static/color.dart';
import '../internet_check/internet_connection_cheaker.dart';

class BottomNavigation extends StatefulWidget {
  Widget child;
  int index;
  BottomNavigation({
    super.key,
    required this.child,
    required this.index,
  });

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  late int _selectedIndex;
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    // TODO: implement initState
    // BackButtonInterceptor.add(backTocloseApp(context).myInterceptor);
    // _selectedIndex = widget.Index;
    // widget.index != null
    //     ? setState(() {
    //         _selectedIndex = widget.index!;
    //       })
    //     : _selectedIndex = 0;
    super.initState();
  }

  @override
  void dispose() {
    // BackButtonInterceptor.remove(backTocloseApp(context).myInterceptor);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: widget.index,
        selectedItemColor: Colo.black,
        selectedIconTheme: IconThemeData(color: Colo.black),
        // unselectedIconTheme: IconThemeData(color: Colors.grey.shade300),
        selectedLabelStyle: TextStyle(
          color: Colo.primaryColor,
        ),
        unselectedFontSize: 12,
        selectedFontSize: 14,
        unselectedItemColor: Colo.blackShade45,
        onTap: (index) {
          // setState(() {
          switch (index) {
            case 0:
              // Provider.of<MapLoadViewmodel>(context, listen: false)
              // .removeMarkerndpathWithDestPath();
              context.go('/home', extra: {'id': "0"});
              break;
            case 1:
              // Provider.of<MapLoadViewmodel>(context, listen: false)
              // .removeMarkerndpathWithDestPath();
              context.go('/mylist', extra: {'id': "1"});
              break;
            case 2:
              // Provider.of<MapLoadViewmodel>(context, listen: false)
              // .removeMarkerndpathWithDestPath();
              context.push('/inbox', extra: {'id': "2"});
              break;
            case 3:
              // Provider.of<MapLoadViewmodel>(context, listen: false)
              // .removeMarkerndpathWithDestPath();
              context.go('/search', extra: {'id': "3"});
              break;
            case 4:
              // Provider.of<MapLoadViewmodel>(context, listen: false)
              // .removeMarkerndpathWithDestPath();
              context.go('/more', extra: {'id': "4"});
              break;
            default:
              // Provider.of<MapLoadViewmodel>(context, listen: false)
              // .removeMarkerndpathWithDestPath();
              context.go('/home', extra: {'id': "0"});
              break;
          }
          setState(() {
            _selectedIndex = index;
          });

          //   _selectedIndex = index;
          //   // pageController.jumpToPage(index);
          // });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              weight: 5.0,
            ),
            label: 'Home',
            activeIcon: Container(
              width: 40,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colo.primaryColor.withOpacity(0.4)),
              child: Icon(
                Icons.home,
                size: 20.0, // Use size to control the icon size
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: 'My List',
            activeIcon: Container(
              width: 40,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colo.primaryColor.withOpacity(0.4)),
              child: Icon(
                Icons.check_circle,
                size: 20.0, // Use size to control the icon size
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox_outlined),
            label: 'Profile',
            activeIcon: Container(
              width: 40,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colo.primaryColor.withOpacity(0.4)),
              child: Icon(
                Icons.inbox,
                size: 20.0, // Use size to control the icon size
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            activeIcon: Container(
              width: 40,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colo.primaryColor.withOpacity(0.4)),
              child: Icon(
                Icons.search,
                size: 20.0, // Use size to control the icon size
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_outlined),
            label: 'More',
            activeIcon: Container(
              width: 40,
              height: 25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colo.primaryColor.withOpacity(0.4)),
              child: Icon(
                Icons.more_horiz,
                size: 20.0, // Use size to control the icon size
              ),
            ),
          ),
        ],
      ),
      //  body: nav[_selectedIndex]);
      // body: SafeArea(
      //   child:  widget.,//IndexedStack(index: _selectedIndex, children: nav),
      //),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: widget.child),
          Visibility(
            visible: InternetConnectionStatus ==
                InternetConnectionStatus.disconnected,
            child: const InternetNotAvailable(),
          ),
        ],
      ),
    );
  }
}
