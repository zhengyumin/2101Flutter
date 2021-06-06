
import 'package:flutter/material.dart';

// Widget build(BuildContext context) {
//   return Scaffold(
//     //脚手架
//     appBar: AppBar(
//       title: Text("Flutter Demo"),
//     ),
//     body: Center(
//       child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//                 width: 200,
//                 child: ZYDashedLine(axis: Axis.horizontal,dashedWidth: 8,count: 15,)
//             ),
//             Container(
//                 height: 200,
//                 child: ZYDashedLine(axis: Axis.vertical,dashedHeight: 8,count: 15,)
//             ),
//           ]
//       ),
//     ),
//   );

class ZYDashedLine extends StatelessWidget {
  final Axis axis;
  final double dashedWidth;
  final double dashedHeight;
  final int count;
  final Color color;

  ZYDashedLine({
    this.axis = Axis.horizontal,
    this.dashedWidth = 1,
    this.dashedHeight = 1,
    this.count = 10,
    this.color = Colors.red
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction:axis,
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: List.generate(count, (index){
        return SizedBox(
          width: dashedWidth,
          height: dashedHeight,
          child: DecoratedBox(
            decoration: BoxDecoration(color: color),
          ),
        );
      }),
    );
  }
}
