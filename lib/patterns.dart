import 'package:flutter/material.dart';

class PatternsPage extends StatefulWidget {
  const PatternsPage({super.key});

  @override
  State<PatternsPage> createState() => _PatternsPageState();
}

class Pattern {
  final String name;
  final IconData icon;
  int count;

  Pattern({required this.name, required this.icon, this.count = 0});
}

class _PatternsPageState extends State<PatternsPage> {
final List<Pattern> patterns = [
    Pattern(name: 'Circle', icon: Icons.circle),
    Pattern(name: 'Square', icon: Icons.square),
    Pattern(name: 'Granny Square', icon: Icons.crop_square),
    Pattern(name: 'Triangle', icon: Icons.change_history),
  ];
void _increment(int index) => setState(() => patterns[index].count++);
  void _decrement(int index) => setState(() {
    if (patterns[index].count > 0) {
      patterns[index].count--;
    }
  });

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
                          color: Colors.green[700],
                        ),
                        const SizedBox(height: 6),
                        Text(
                          patterns[i].name,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     IconButton(
                    //       icon: const Icon(Icons.remove_circle_outline),
                    //       onPressed: () => _decrement(i),
                    //       padding: EdgeInsets.zero,
                    //       constraints: const BoxConstraints(),
                    //     ),
                    //     Padding(
                    //       padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    //       child: Text(
                    //         '${patterns[i].count}',
                    //         style: const TextStyle(fontSize: 16),
                    //       ),
                    //     ),
                    //     IconButton(
                    //       icon: const Icon(Icons.add_circle_outline),
                    //       onPressed: () => _increment(i),
                    //       padding: EdgeInsets.zero,
                    //       constraints: const BoxConstraints(),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}