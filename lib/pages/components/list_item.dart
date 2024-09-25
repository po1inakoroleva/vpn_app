import 'package:flutter/material.dart';
import 'package:fluttertest/theme/theme.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.icon,
    required this.title,
    required this.radioItem,
  });

  final String icon;
  final String title;
  final RadioListTile radioItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage(icon),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            title,
            style: darkTheme.textTheme.bodyMedium,
          ),
        ),
        Expanded(
          child: radioItem,
        ),
      ],
    );
  }
}
