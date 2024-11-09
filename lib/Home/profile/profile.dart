
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  // * Drawer Icons
  final List<IconData> icons = [
    CupertinoIcons.home,
    CupertinoIcons.profile_circled,
    CupertinoIcons.settings,
  ];
  // * Drawer Text
  final List<String> drawerText = [
    'Home',
    'Profile',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [    Color(0xff253745),
            Color(0xff9BA8AB),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/avatar.webp'),
          ),
          const SizedBox(height: 20),
          Text(
            'Mohamed Adel',
            style: textTheme.displaySmall,
          ),
          Text(
            'Flutter Developer',
            style: textTheme.titleLarge,
          ),
          const SizedBox(height: 50),
          // * Drawer Items
          Expanded(
            child: ListView.builder(
              itemCount: icons.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 8,
                    ),
                    child: ListTile(
                      minVerticalPadding: 10,
                      leading: Icon(
                        icons[index],
                        color: Colors.white,
                        size: 25,
                      ),
                      title: Text(
                        drawerText[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      contentPadding:
                      const EdgeInsets.symmetric(horizontal: 0.0),
                      visualDensity: const VisualDensity(horizontal: -4),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
