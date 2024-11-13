import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hrms/Screen/home/widget/legacy_my_work/custom_expansiontile_widget.dart';

class LagencyMyworkScreen extends StatefulWidget {
  const LagencyMyworkScreen({super.key});

  @override
  State<LagencyMyworkScreen> createState() => _LagencyMyworkScreenState();
}

class _LagencyMyworkScreenState extends State<LagencyMyworkScreen> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Lagacy My Work",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            TextButton(onPressed: () {}, child: Text("See all"))
          ],
        ),
        ListView.separated(
          padding: EdgeInsets.zero,
          itemCount: 5,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return CustomExpansionTile(
              title: Text('Some title $index'),
              children: const <Widget>[
                ListTile(title: Text('This is item')),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 4,
              child: Divider(
                thickness: 0.1,
              ),
            );
          },
        ),
      ],
    );
  }
}
