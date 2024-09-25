import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.route,
    required this.icon,
  });

  final String route;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(route);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: SvgPicture.asset(
          icon,
        ),
      ),
    );
  }
}
