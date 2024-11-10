import 'package:azkar/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Home/favorites page/favorites_page.dart';
import 'Home/profile/profile.dart';
import 'Home/ui/Azkar/search.dart';
import 'Home/ui/Azkar/ui.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
          ChangeNotifierProvider<FavoritesNotifier>(create: (_) => FavoritesNotifier()),
        ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: Directionality( // add this
        textDirection: TextDirection.rtl, // set this property
        child: MyHomePage(),
      ),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool theme = true;
  final WidgetStateProperty<Icon?> thumbIcon = WidgetStateProperty.resolveWith<Icon?>(
        (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(Icons.sunny);
      }
      return const Icon(Icons.nightlight);
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الرئيسية',style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
        // leading: IconButton(
        //   icon:  Icon(Icons. menu,color: Theme.of(context).colorScheme.secondary,),
        //   onPressed: () { Scaffold.of(context).openDrawer(); },
        //   tooltip: MaterialLocalizations. of(context).openAppDrawerTooltip,
        // ),

        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FavoritesPage()),
              );
            },
            child: const Text('عرض المفضلة'),
          ),
          IconButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
            icon: Icon(Icons.dark_mode,color: Theme.of(context).colorScheme.secondary,),
          ),
          // Switch(
          //   thumbIcon: thumbIcon,
          //   activeColor: Colors.white,
          //   inactiveThumbColor: Colors.black,
          //   value: theme,
          //   onChanged: (bool value) {
          //     setState(() {
          //     if  (theme = value){
          //       Provider.of<ThemeProvider>(context, listen: false).toggleTheme();}else{Provider.of<ThemeProvider>(context, listen: true).toggleTheme();}
          //     });
          //   },
          //     onFocusChange:(bool value) {
          //       setState(() {
          //         if  (theme = value){
          //           Provider.of<ThemeProvider>(context, listen: true).toggleTheme();}
          //       });
          //     } ,
          // ),
          IconButton(
            icon: Icon(Icons. search,color: Theme.of(context).colorScheme.secondary,),
            tooltip: 'Open shopping cart',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>AzkarSearchScreen()));
            },

          ),

SizedBox(width: 20,)
          // IconButton(
          //   icon: Icon(Icons. settings,color: Theme.of(context).colorScheme.secondary,),
          //   tooltip: 'Open shopping cart',
          //   onPressed: () {
          //     // handle the press
          //   },
          // ),
        ],
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
      ),
      body: AzkarDetailScreen(),
      drawer: Drawer(child: CustomDrawer(),),

      // SingleChildScrollView(
      //   child: Center(
      //     child: Column(
      //       children: [
      //         FlashyTabBar(
      //           backgroundColor: Theme.of(context).colorScheme.onPrimary,
      //           // backgroundColor: Colors.white,
      //           animationCurve: Curves.linear,
      //           selectedIndex: _selectedIndex,
      //           iconSize: 30,
      //           showElevation: false, // use this to remove appBar's elevation
      //           onItemSelected: (index) => setState(() {
      //             _selectedIndex = index;
      //           }),
      //           items: [
      //             FlashyTabBarItem(
      //               // inactiveColor: Theme.of(context).colorScheme.onPrimary,
      //               activeColor: Theme.of(context).colorScheme.secondary,
      //               icon: Image.asset(
      //                 "assets/nav_icons/praying.png",
      //                 // color: Color(0xff9496c1),
      //                 width: 35,
      //               ),
      //               title: Text('Azkar',style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 17),)
      //             ),
      //             FlashyTabBarItem(
      //               activeColor: Theme.of(context).colorScheme.secondary,
      //               icon: Image.asset(
      //                 "assets/nav_icons/kaaba.png",
      //                 // color: Color(0xff9496c1),
      //                 width: 35,
      //               ),
      //               title: Text('kaaba',style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 17),),
      //             ),
      //             FlashyTabBarItem(
      //                 activeColor: Theme.of(context).colorScheme.secondary,
      //                 icon: Image.asset(
      //                 "assets/nav_icons/mosque.png",
      //                 // color: Color(0xff9496c1),
      //                 width: 35,
      //               ),
      //               title: Text('Salah',style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 17),)
      //             ),
      //             // FlashyTabBarItem(
      //             //   icon: Icon(Icons.highlight),
      //             //   title: Text('Highlights'),
      //             // ),
      //             // FlashyTabBarItem(
      //             //   icon: Icon(Icons.settings),
      //             //   title: Text('한국어'),
      //             // ),
      //           ],
      //         ),
      //         Center(child: tabItems[_selectedIndex]),
      //       ],
      //     ),
      //   ),
      // ),

    );
  }
}
