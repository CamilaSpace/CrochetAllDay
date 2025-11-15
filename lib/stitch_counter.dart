import 'package:flutter/material.dart';

class StitchCounter extends StatefulWidget {
  const StitchCounter({super.key});
  @override
  State<StitchCounter> createState() => _StitchCounterState();
}

class _StitchCounterState extends State<StitchCounter> {
  int stitches = 0;
  int rows = 0;


  // void increase(){

  // }

  void increaseStitch(){
    setState(() {
      stitches++;
    });
  }

  void decreaseStitch(){
    setState(() {
      stitches--;
    });
  }

  void decreaseRow(){
    setState(() {
      rows--;
    });
  }

  void increaseRow(){
    setState(() {
      rows++;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Counter here'),
    );
    
  }
}
