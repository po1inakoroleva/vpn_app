import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fluttertest/enums.dart';
import 'package:fluttertest/pages/components/start_title.dart';
import 'package:fluttertest/pages/components/list_item.dart';
import 'package:fluttertest/pages/components/continue_btn.dart';
import 'package:fluttertest/pages/components/nav_item.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  VpnExperience? _experience = VpnExperience.speed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/background.svg',
                width: MediaQuery.of(context).size.width,
              ),
              Container(
                width: 276,
                padding: const EdgeInsets.only(top: 102),
                child: StartTitle(
                  title: 'Tailor your VPN experience'.toUpperCase(),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                ListItem(
                  icon: 'assets/png/rocket_icon.png',
                  title: 'Optimize For High-speed',
                  radioItem: RadioListTile<VpnExperience>(
                    value: VpnExperience.speed,
                    groupValue: _experience,
                    activeColor: const Color(0xFF4796F2),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (VpnExperience? value) {
                      setState(
                        () {
                          _experience = value;
                        },
                      );
                    },
                  ),
                ),
                const Divider(
                  color: Color(0xFF132F50),
                ),
                ListItem(
                  icon: 'assets/png/marker_icon.png',
                  title: 'Conceal Actual Location',
                  radioItem: RadioListTile<VpnExperience>(
                    value: VpnExperience.location,
                    groupValue: _experience,
                    activeColor: const Color(0xFF4796F2),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (VpnExperience? value) {
                      setState(
                        () {
                          _experience = value;
                        },
                      );
                    },
                  ),
                ),
                const Divider(
                  color: Color(0xFF132F50),
                ),
                ListItem(
                  icon: 'assets/png/folder_icon.png',
                  title: 'Safeguard Online Chats',
                  radioItem: RadioListTile<VpnExperience>(
                    value: VpnExperience.chats,
                    groupValue: _experience,
                    activeColor: const Color(0xFF4796F2),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (VpnExperience? value) {
                      setState(
                        () {
                          _experience = value;
                        },
                      );
                    },
                  ),
                ),
                const Divider(
                  color: Color(0xFF132F50),
                ),
                ListItem(
                  icon: 'assets/png/glasses_icon.png',
                  title: 'Stay Hidden From Tracking',
                  radioItem: RadioListTile<VpnExperience>(
                    value: VpnExperience.tracking,
                    groupValue: _experience,
                    activeColor: const Color(0xFF4796F2),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (VpnExperience? value) {
                      setState(
                        () {
                          _experience = value;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 155),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavItem(
                  route: '/',
                  icon: 'assets/svg/navbar_btn_inactive.svg',
                ),
                NavItem(
                  route: '/experience',
                  icon: 'assets/svg/navbar_btn_active.svg',
                ),
                NavItem(
                  route: '/singup',
                  icon: 'assets/svg/navbar_btn_inactive.svg',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
            child: ContinueButton(
              title: 'CONTINUE',
              onPressed: () {
                Navigator.of(context).pushNamed('/singup');
              },
            ),
          ),
        ],
      ),
    );
  }
}
