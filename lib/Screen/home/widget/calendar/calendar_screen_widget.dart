import 'package:flutter/material.dart';

import '../../../../static/color.dart';

Widget CalendarScreenWidget(BuildContext context) {
  int _selectedValue = 1;
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Modal Bottom Sheet',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 16.0),
              Text('This is the content of the modal bottom sheet.'),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }

  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Calendar",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          TextButton(onPressed: () {}, child: Text("See all"))
        ],
      ),
      ListView.separated(
        itemCount: 5,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, int) {
          return ListTile(
            onTap: () => _showModalBottomSheet(context),
            title: Text.rich(TextSpan(children: [
              TextSpan(
                text: 'Today, ',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              TextSpan(
                text: 'Thu, ul 25',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ])),
            trailing: Text("No events"),
          );
        },
        separatorBuilder: (context, int) {
          return Divider(
            thickness: 0,
            height: 0.2,
          );
        },
      )
    ],
  );
}
