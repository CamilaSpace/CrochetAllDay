import 'package:flutter/material.dart';
import 'main.dart';
//enum PageID {stitchCounter}

class MyDrawer extends StatefulWidget {
  final void Function(int) onSelect; // pass the callback in

  const MyDrawer({super.key, required this.onSelect});

  @override
  State<MyDrawer> createState() => _MyDrawerPageState();
}

class _MyDrawerPageState extends State<MyDrawer> {
bool _isDarkMode = false;
@override
  Widget build(BuildContext context ) {
     void Function(int) onSelect;
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Crochet All Day'),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              widget.onSelect(PageID.home.index);
            },
          ),
          ListTile(
            title: Text('Patterns'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Stitch Counter'),
            onTap: () {
              Navigator.pop(context);
              widget.onSelect(PageID.stitchCounter.index);
            },
          ),
          ListTile(
            title: Text('Light/Dark Mode'),
            trailing: Switch(value: _isDarkMode, 
            onChanged: (bool newValue) {
                setState(() {
                  _isDarkMode = newValue; // updates the state
                });
            },
            ), //value: , onChanged: onChanged
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}