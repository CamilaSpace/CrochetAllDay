import 'package:flutter/material.dart';
import 'theme.dart';
//import 'main.dart';
//enum PageID {stitchCounter}

enum PageID { home, patterns, stitchCounter }

Widget appDrawer(
  BuildContext context,
  void Function(int) onSelect,
  bool isDarkMode,
  Function(bool) onThemeToggle,
) {
   return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
            child: Text('Crochet All Day'),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              onSelect(PageID.home.index);
            },
          ),
          ListTile(
            title: Text('Patterns'),
            onTap: () {
             Navigator.pop(context);
              onSelect(PageID.patterns.index);
            },
          ),
          ListTile(
            title: Text('Stitch Counter'),
            onTap: () {
              Navigator.pop(context);
              onSelect(PageID.stitchCounter.index);
            },
          ),
          // ListTile(
          //   title: Text('Light/Dark Mode'),
          //   trailing: Switch(value: isDarkMode, 
          //   onChanged: onThemeToggle,
          //   ), //value: , onChanged: onChanged
          //   onTap: () {
          //     // Optionally toggle when tapping the whole tile:
          //     onThemeToggle(!isDarkMode);
          //   },
          // ),
        ],
      ),
    );
}

class MyDrawer extends StatefulWidget {
  final void Function(int) onSelect;

  const MyDrawer({super.key, required this.onSelect});

  @override
  State<MyDrawer> createState() => _MyDrawerPageState();
}

class _MyDrawerPageState extends State<MyDrawer> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return appDrawer(
      context,
      widget.onSelect,
      isDarkMode,
      (value) {
        setState(() {
          isDarkMode = value;
        });
      },
    );
  }
}