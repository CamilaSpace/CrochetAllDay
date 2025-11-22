import 'package:flutter/material.dart';
import 'patterns.dart';
// class WIP {
//   final String name;
//   final IconData icon;

//   WIP({required this.name, required this.icon});
// }
class WIP {
  final Patterns pattern;

  WIP(this.pattern);
}

List<WIP> wipPatterns = [];

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}
// class _HomePageState extends State<HomePage> {
// @override
//   Widget build(BuildContext context) {
//     List<Widget> listTiles = [];
//     for (var i = 0; i < wipPatterns.length; i++) {
//       listTiles.add(
//         ListTile(
//           title: Text(wipPatterns[i].pattern.name),
//           trailing: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//              ElevatedButton(onPressed: () {}, child: Text("Button"))
//             ],
//           ),
//         ),
//       );
//     }
//     return Scaffold(
//       appBar: AppBar(title: Text("Home")),
//       body: Center(
//         child: Text("Welcome to Crochet All Day!"),
//       ),
//     );
//   }
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home")),
//       body: wipPatterns.isEmpty
//           ? Center(child: Text("Welcome to Crochet All Day!"))
//           : ListView(
//               children: wipPatterns.map((wip) {
//                 return ListTile(
//                   leading: Icon(wip.pattern.icon),
//                   title: Text(wip.pattern.name),
//                 );
//               }).toList(),
//             ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => PatternsPage()),
//           ).then((_) => setState(() {})); // Refresh to show new WIP
//         },
//       ),
//     );
//   }
// }

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Build a list of ListTiles from WIP patterns
    List<Widget> listTiles = [];
    for (var i = 0; i < wipPatterns.length; i++) {
      listTiles.add(
        ListTile(
          leading: Icon(wipPatterns[i].pattern.icon),
          title: Text(wipPatterns[i].pattern.name),
          trailing: ElevatedButton(
            onPressed: () {}, 
            child: Text("Button"),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      // If no WIPs, show welcome text; else show the list
      body: wipPatterns.isEmpty
          ? Center(child: Text("Welcome to Crochet All Day!"))
          : ListView(children: listTiles),
    );
  }
}
