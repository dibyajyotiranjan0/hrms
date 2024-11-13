import 'package:flutter/material.dart';
import 'package:hrms/static/color.dart';

Widget favoriteWidget(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Favorities"),
          TextButton(onPressed: () {}, child: Text("See all"))
        ],
      ),
      Container(
          // margin: EdgeInsets.only(left: ),
          padding: EdgeInsets.all(32),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colo.blackShade45, width: 0.2)),
          child: ListTile(
            // minLeadingWidth: 50,
            leading: Icon(
              Icons.list_alt_outlined,
              color: Colo.primaryColor,
              size: 40,
            ),
            title: Text("No item in you Tray"),
            subtitle: Text("items in yur tray will Appear here"),
          ))
    ],
  );
}
