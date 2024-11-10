
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});

  // * Drawer Icons
  final List icons = [
    CupertinoIcons.home,
    CupertinoIcons.profile_circled,
    CupertinoIcons.settings,
  ];
  // * Drawer Text
  final List<String> drawerText = [
    'Home',
    'Profile',
    'Settings',
    'Settings',

  ];

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: width * 0.05, vertical: 50),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [    Color(0xff074b7b),
            Color(0xff9BA8AB),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile/avatar.webp'),
          ),
          const SizedBox(height: 20),
          Text(
            'Mohamed Adel',
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Theme.of(context).colorScheme.onSecondary ),
          ),
          const SizedBox(height: 10),

          Text(
            'Flutter Developer',
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color:Theme.of(context).colorScheme.onSecondary ),
          ),
          const SizedBox(height: 50),
          // * Drawer Items
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: icons.length,
          //     itemBuilder: (context, index) {
          //       return InkWell(
          //         onTap: () {},
          //         child: Container(
          //           margin: const EdgeInsets.symmetric(
          //             vertical: 8,
          //           ),
          //           child: ListTile(
          //             minVerticalPadding: 10,
          //             leading: Icon(
          //               icons[index],
          //               color: Colors.white,
          //               size: 25,
          //             ),
          //             title: Text(
          //               drawerText[index],
          //               style: const TextStyle(
          //                 color: Colors.white,
          //                 fontSize: 15,
          //               ),
          //             ),
          //             contentPadding:
          //             const EdgeInsets.symmetric(horizontal: 0.0),
          //             visualDensity: const VisualDensity(horizontal: -4),
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
          Container(
          decoration:   BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            width: width * 0.8,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset(
                    "assets/profile/icons8-facebook-circled.gif",
                    width: 30,
                    height: 30,
                  ),
                  onPressed: () async {
                    final Uri url = Uri.parse('https://www.facebook.com/MoohAdelll/'); // Replace with your Instagram profile URL
                    if (!await launchUrl(url)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    "assets/profile/icons8-github.gif",
                    width: 30,
                    height: 30,
                  ),
                  onPressed: () async {
                    final Uri url = Uri.parse('https://github.com/MohAdell'); // Replace with your Instagram profile URL
                    if (!await launchUrl(url)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    "assets/profile/icons8-instagram.gif",
                    width: 30,
                    height: 30,
                  ),
                  onPressed: () async {
                    final Uri url = Uri.parse('https://www.instagram.com/Moohadel'); // Replace with your Instagram profile URL
                    if (!await launchUrl(url)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    "assets/profile/icons8-linkedin-logo.gif",
                    width: 30,
                    height: 30,
                  ),
                  onPressed: () async {
                    final Uri url = Uri.parse('https://www.linkedin.com/in/mohamed-adel-a75b622b7/'); // Replace with your Instagram profile URL
                    if (!await launchUrl(url)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
