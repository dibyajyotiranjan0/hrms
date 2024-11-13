import 'dart:core';
import 'dart:core';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../static/color.dart';

Widget recentScreen(BuildContext context) {
  int _selectedValue = 1;
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text.rich(TextSpan(children: [
            TextSpan(
              text: 'Recents',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            TextSpan(
              text: '5/5',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ])),
          TextButton(onPressed: () {}, child: Text("See all"))
        ],
      ),
      ListView.separated(
        itemCount: 5,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, int) {
          return Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: InkWell(
                  child: int == 3
                      ? Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                          size: 30,
                        )
                      : Icon(
                          Icons.radio_button_off_outlined,
                          size: 30,
                        ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Option 2',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text('Option 2'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.flag_outlined,
                        color: Colors.black,
                        weight: 0.2,
                        size: 20,
                        opticalSize: 0.2,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Normal",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      )
                    ],
                  )
                ],
              ), // Display the title for option 2
            ],
          );
          // return RadioListTile(
          //   isThreeLine: false,
          //   dense: false,
          //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          //   // contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          //   contentPadding: EdgeInsets.zero,
          //   title: Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         'Option 2',
          //         style: Theme.of(context).textTheme.bodyMedium,
          //       ),
          //       Text('Option 2'),
          //     ],
          //   ), // Display the title for option 2
          //   subtitle: Align(
          //     alignment: Alignment.centerLeft,
          //     child: TextButton.icon(
          //         style: TextButton.styleFrom(
          //             padding: EdgeInsets.symmetric(vertical: 4),
          //             minimumSize: Size.zero, // Remove minimum size constraints
          //             tapTargetSize: MaterialTapTargetSize
          //                 .shrinkWrap, // Shrink tap target to content size

          //             iconColor: Colo.black,
          //             textStyle: TextStyle(color: Colors.blue, fontSize: 16)),
          //         onPressed: () {},
          //         icon: Icon(
          //           Icons.flag_outlined,
          //           weight: 0.2,
          //           size: 20,
          //           opticalSize: 0.2,
          //         ),
          //         label: Text("Normal")),
          //   ), // Display a subtitle for option 2

          //   value: 2, // Assign a value of 2 to this option
          //   groupValue:
          //       _selectedValue, // Use _selectedValue to track the selected option
          //   onChanged: (value) {
          //     // setState(() {
          //     //   _selectedValue =
          //     //       value!; // Update _selectedValue when option 2 is selected
          //     // });
          //   },
          // );
        },
        separatorBuilder: (context, int) {
          return Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Divider(
              thickness: 0,
              height: 0.2,
            ),
          );
        },
      )
    ],
  );
}
