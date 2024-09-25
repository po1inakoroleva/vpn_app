import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fluttertest/enums.dart';
import 'package:fluttertest/pages/components/start_title.dart';
import 'package:fluttertest/pages/components/list_item.dart';
import 'package:fluttertest/pages/components/continue_btn.dart';
import 'package:fluttertest/pages/components/nav_item.dart';

class PusposePage extends StatefulWidget {
  const PusposePage({super.key});

  @override
  State<PusposePage> createState() => _PusposePageState();
}

class _PusposePageState extends State<PusposePage> {
  VpnPurpose? _purpose = VpnPurpose.browsingHistory;

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
                padding: const EdgeInsets.only(top: 102),
                width: 276,
                child: StartTitle(
                  title: 'What’s your purpose of using VPN?'.toUpperCase(),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                ListItem(
                  icon: 'assets/png/eyes_icon.png',
                  title: 'Hide Browsing History',
                  radioItem: RadioListTile<VpnPurpose>(
                    value: VpnPurpose.browsingHistory,
                    groupValue: _purpose,
                    activeColor: const Color(0xFF4796F2),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (VpnPurpose? value) {
                      setState(
                        () {
                          _purpose = value;
                        },
                      );
                    },
                  ),
                ),
                const Divider(
                  color: Color(0xFF132F50),
                ),
                ListItem(
                  icon: 'assets/png/security_icon.png',
                  title: 'Secure Digital Conversations',
                  radioItem: RadioListTile<VpnPurpose>(
                    value: VpnPurpose.conversations,
                    groupValue: _purpose,
                    activeColor: const Color(0xFF4796F2),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (VpnPurpose? value) {
                      setState(
                        () {
                          _purpose = value;
                        },
                      );
                    },
                  ),
                ),
                const Divider(
                  color: Color(0xFF132F50),
                ),
                ListItem(
                  icon: 'assets/png/lock_icon.png',
                  title: 'Encrypt Online Data',
                  radioItem: RadioListTile<VpnPurpose>(
                    value: VpnPurpose.encryptData,
                    groupValue: _purpose,
                    activeColor: const Color(0xFF4796F2),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (VpnPurpose? value) {
                      setState(
                        () {
                          _purpose = value;
                        },
                      );
                    },
                  ),
                ),
                const Divider(
                  color: Color(0xFF132F50),
                ),
                ListItem(
                  icon: 'assets/png/earth_icon.png',
                  title: 'Mark IP Address',
                  radioItem: RadioListTile<VpnPurpose>(
                    value: VpnPurpose.ipAddress,
                    groupValue: _purpose,
                    activeColor: const Color(0xFF4796F2),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (VpnPurpose? value) {
                      setState(
                        () {
                          _purpose = value;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 151),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavItem(
                  route: '/',
                  icon: 'assets/svg/navbar_btn_active.svg',
                ),
                NavItem(
                  route: '/experience',
                  icon: 'assets/svg/navbar_btn_inactive.svg',
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
                Navigator.of(context).pushNamed('/experience');
              },
            ),
          )
        ],
      ),
    );
  }
}
