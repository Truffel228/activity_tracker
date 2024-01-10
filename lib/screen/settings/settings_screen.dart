import 'package:activity_tracker/my_flat_button.dart';
import 'package:activity_tracker/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Text(
                'Settings',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: MyTheme.whiteColor,
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SetTile(
                      p: 'icons/arrow_left.svg',
                      t: 'Share with friends',
                      onT: () {},
                    ),
                    SetTile(
                      p: 'icons/man.svg',
                      t: 'Write support',
                      onT: () {},
                    ),
                    SetTile(
                      p: 'icons/shield.svg',
                      t: 'Privacy Policy',
                      onT: () {},
                    ),
                    SetTile(
                      p: 'icons/sheet.svg',
                      t: 'Terms of use',
                      onT: () {},
                    ),
                    const SizedBox(height: 16),
                    MyFlatButton(
                      onTap: () {},
                      text: 'Logout',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 12),
        alignment: Alignment.topCenter,
        color: MyTheme.whiteColor,
        height: 80,
        child: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 16,
            color: MyTheme.blackColor,
          ),
        ),
      ),
    );
  }
}

class SetTile extends StatelessWidget {
  const SetTile(
      {super.key, required this.p, required this.t, required this.onT});
  final String p;
  final String t;
  final VoidCallback onT;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: MyTheme.scaffoldBackgroundColor,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: FittedBox(
              child: SvgPicture.asset(p),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              t,
              style: const TextStyle(
                color: MyTheme.blackColor,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Container(
            height: 32,
            width: 32,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: MyTheme.whiteColor,
            ),
            child: FittedBox(
              child: SvgPicture.asset(
                'icons/arrow.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
