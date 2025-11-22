import 'package:flutter/material.dart';
import 'home_page.dart';


class PatternsPage extends StatefulWidget {
  const PatternsPage({super.key});

  @override
  State<PatternsPage> createState() => _PatternsPageState();
}

class Patterns {
  final String name;
  final IconData icon;

  Patterns({required this.name, required this.icon});
}

class _PatternsPageState extends State<PatternsPage> {
  final List<Patterns> patterns = [
    Patterns(name: 'Circle', icon: Icons.circle),
    Patterns(name: 'Square', icon: Icons.square),
    Patterns(name: 'Granny Square', icon: Icons.crop_square),
    Patterns(name: 'Triangle', icon: Icons.change_history),
  ];

  void startPattern(Patterns pattern) {
    wipPatterns.add(WIP(pattern));
  print("Added ${pattern.name} to WIP list");
  // You can optionally show a SnackBar to confirm
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("${pattern.name} added to WIP")),
  );
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 4 / 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: [
          for (var i = 0; i < patterns.length; i++)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          patterns[i].icon,
                          size: 36,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          patterns[i].name,
                          style: TextStyle(fontSize: 16),
                        ),
                         Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: () {Navigator.pop(context);}, child: Text('View Pattern'),
                        ),
                        ElevatedButton(onPressed: () => startPattern(patterns[i]), child: Text('Start Pattern')),
                      ],
        ),  
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}