import 'package:flutter/material.dart';

class StitchCounter extends StatefulWidget {
  const StitchCounter({super.key});
  @override
  State<StitchCounter> createState() => _StitchCounterState();
}

class _StitchCounterState extends State<StitchCounter> {
@override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text('Stitch Counter')),
      body: Center(child: Text('Counter here')),
    );
  }
}