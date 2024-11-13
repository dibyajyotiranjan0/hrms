import 'package:flutter/material.dart';

Widget lagancyCommentWidget(BuildContext context) {
  return Column(
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
      Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Icon(
                Icons.contact_support_outlined,
                size: 50,
              ),
            ),
            Text(
              "No Assigned coments",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "Al your assigned comments will appear heere!",
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      )
    ],
  );
}
