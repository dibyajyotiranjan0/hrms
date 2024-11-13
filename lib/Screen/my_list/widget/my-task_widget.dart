import 'package:flutter/material.dart';
import 'package:hrms/static/color.dart';

Widget myTaskWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
        height: 50,
        width: double.maxFinite,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return TextButton.icon(
                  style: TextButton.styleFrom(
                    // padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.padded,
                    backgroundColor: index == 1 ? Colo.primaryColor : null,
                    foregroundColor: index == 1 ? Colo.white : Colo.black,
                    side: BorderSide(color: Colo.primaryColor, width: .5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  icon: Icon(Icons.check_circle_outline),
                  onPressed: () {},
                  label: Text("incomplete Task"));
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 5,
              );
            },
            itemCount: 3),
      ),
      SizedBox(
        height: 8,
      ),
      ExpansionTile(
        title: const Text('Some title'),
        subtitle: const Text('Some subtitle'),
        // null if expanded, will using default arrow
        //trailing: isExpanded? null: Text("Other"),
        children: const <Widget>[
          ListTile(title: Text('This is item')),
        ],
        onExpansionChanged: (bool expanded) {
          // setState(() => isExpanded = expanded);
        },
      ),
    ],
  );
}
