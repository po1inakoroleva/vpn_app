import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fluttertest/pages/components/start_title.dart';
import 'package:fluttertest/pages/components/continue_btn.dart';
import 'package:fluttertest/pages/components/nav_item.dart';

enum VpnPurpose { browsingHistory, conversations, encryptData, ipAddress }

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                padding: const EdgeInsets.only(top: 86),
                width: 276,
                child: StartTitle(
                  title: 'Configuring settings for your goals...'.toUpperCase(),
                ),
              ),
            ],
          ),
          Image.asset('assets/png/start_viking.png'),
          Padding(
            padding: const EdgeInsets.all(24),
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'By continuing, you agree to\nour ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA1A1A1),
                    ),
                  ),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: ' and ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFA1A1A1),
                    ),
                  ),
                  TextSpan(
                    text: 'Terms of Use.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NavItem(
                  route: '/',
                  icon: 'assets/svg/navbar_btn_inactive.svg',
                ),
                NavItem(
                  route: '/experience',
                  icon: 'assets/svg/navbar_btn_inactive.svg',
                ),
                NavItem(
                  route: '/singup',
                  icon: 'assets/svg/navbar_btn_active.svg',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
            child: ContinueButton(title: 'GET STARTED', onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
