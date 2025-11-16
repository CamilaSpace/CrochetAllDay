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

  void saveCounter(){
    // Placeholder for save functionality
    print("stitches saved: $stitches, rows saved: $rows");
  }



  @override
  Widget build(BuildContext context) {
  return Column(
    // mainAxisAlignment: MainAxisAlignment.center,   // top
    // crossAxisAlignment: CrossAxisAlignment.center, // center horizontally
    children: [
      SizedBox(height: 30), 

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Stitch Counter', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Stitches: $stitches'),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: decreaseStitch,
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: increaseStitch,
                ),
              ],
            ),
          ],
        ),
        SizedBox(width: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Rows: $rows'),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: decreaseRow,
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: increaseRow,
                ),
              ],
            ),
          ],
        ),
        // Row(
        //   children: [
        //     ElevatedButton(
        //       onPressed: (){
        //         setState(() {
        //           stitches = 0;
        //           rows = 0;
        //         });
        //       },
        //       child: Text('Reset'),
        //     ),
        //   ],
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: saveCounter, child: Text('Save Counter')),
          ],
        ),  
      ],
  );
  
  }
}
