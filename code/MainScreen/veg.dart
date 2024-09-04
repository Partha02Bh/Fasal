import 'package:flutter/material.dart';
import 'dart:async';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SlidingVegetables(),
//     );
//   }
// }

class SlidingVegetables extends StatefulWidget {
  @override
  _SlidingVegetablesState createState() => _SlidingVegetablesState();
}

class _SlidingVegetablesState extends State<SlidingVegetables> {
  final List<String> _vegetables = ['Wheat', 'Potato', 'Tomato', 'Carrot'];
  final Duration _animationDuration = Duration(seconds: 2);
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startSliding();
  }

  void _startSliding() {
    _timer = Timer.periodic(_animationDuration, (timer) {
      final removedItem = _vegetables.removeAt(0);
      _vegetables.add(removedItem);
      _listKey.currentState?.removeItem(
        0,
        (context, animation) => _buildItem(removedItem, animation),
        duration: _animationDuration,
      );
      Future.delayed(_animationDuration, () {
        _listKey.currentState?.insertItem(_vegetables.length - 1);
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: _listKey,
      initialItemCount: _vegetables.length,
      itemBuilder: (context, index, animation) {
        return _buildItem(_vegetables[index], animation);
      },
    );
  }

  Widget _buildItem(String vegetable, Animation<double> animation) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(1, 0),
        end: Offset.zero,
      ).animate(animation),
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF132909)),
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(12),
        ),
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              vegetable,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  vegetable == 'Wheat' ? '1520/Q' : '5650/Q',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.trending_up,
                  color: Colors.green,
                  size: 20,
                ),
              ],
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}


// class SlidingVegetables extends StatefulWidget {
//   @override
//   _SlidingVegetablesState createState() => _SlidingVegetablesState();
// }

// class _SlidingVegetablesState extends State<SlidingVegetables> {
//   final List<String> _vegetables = ['Wheat', 'Potato', 'Potato', 'Potato'];
//   final Duration _animationDuration = Duration(seconds: 2);
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _startSliding();
//   }

//   void _startSliding() {
//     _timer = Timer.periodic(_animationDuration, (timer) {
//       setState(() {
//         _vegetables.add(_vegetables.removeAt(0)); // Move first item to end
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sliding Vegetables'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: AnimatedList(
//           initialItemCount: _vegetables.length,
//           itemBuilder: (context, index, animation) {
//             return _buildItem(_vegetables[index], animation);
//           },
//         ),
//       ),
//     );
//   }

//   Widget _buildItem(String vegetable, Animation<double> animation) {
//     return SlideTransition(
//       position: Tween<Offset>(
//         begin: Offset(1, 0),
//         end: Offset.zero,
//       ).animate(animation),
//       child: Container(
//         padding: EdgeInsets.all(16),
//         margin: EdgeInsets.only(bottom: 16),
//         decoration: BoxDecoration(
//           border: Border.all(color: Color(0xFF132909)),
//           color: Color(0xFFFFFFFF),
//           borderRadius: BorderRadius.circular(12),
//         ),
//         height: 100, // Increase the height here
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               vegetable,
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.black,
//               ),
//             ),
//             SizedBox(height: 8),
//             Row(
//               children: [
//                 Text(
//                   vegetable == 'Wheat' ? '1520/Q' : '5650/Q',
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(width: 4),
//                 Icon(
//                   Icons.trending_up,
//                   color: Colors.green,
//                   size: 20,
//                 ),
//               ],
//             ),
//             SizedBox(height: 8),
//           ],
//         ),
//       ),
//     );
//   }
// }


// Row with two blocks for vegetables
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Expanded(
                //       child: Container(
                //         padding: EdgeInsets.all(16),
                //         decoration: BoxDecoration(
                //           border: Border.all(color: Color(0xFF132909)),
                //           color: Color(0xFFFFFFFF),
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //         height: 100, // Increase the height here
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               'Wheat',
                //               style: TextStyle(
                //                 fontSize: 18,
                //                 color: Colors.black,
                //                 // fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //             SizedBox(height: 8),
                //             Row(
                //               children: [
                //                 Text(
                //                   '1520/Q',
                //                   style: TextStyle(
                //                     fontSize: 15,
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.black,
                //                   ),
                //                 ),
                //                 SizedBox(width: 4),
                //                 Icon(
                //                   Icons.trending_up,
                //                   color: Colors.green,
                //                   size: 20,
                //                 ),
                //               ],
                //             ),
                //             SizedBox(height: 8),
                //           ],
                //         ),
                //       ),
                //     ),
                //     SizedBox(width: 16),
                //     Expanded(
                //       child: Container(
                //         padding: EdgeInsets.all(16),
                //         decoration: BoxDecoration(
                //           border: Border.all(color: Color(0xFF132909)),
                //           color: Color(0xFFFFFFFF),
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //         height: 100, // Increase the height here
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               'Potato',
                //               style: TextStyle(
                //                 fontSize: 18,
                //                 color: Colors.black,
                //                 // fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //             SizedBox(height: 8),
                //             Row(
                //               children: [
                //                 Text(
                //                   '5650/Q',
                //                   style: TextStyle(
                //                     fontSize: 15,
                //                     color: Colors.black,
                //                     fontWeight: FontWeight.bold,
                //                   ),
                //                 ),
                //                 SizedBox(width: 4),
                //                 Icon(
                //                   Icons.trending_up,
                //                   color: Colors.green,
                //                   size: 20,
                //                 ),
                //               ],
                //             ),
                            
                //             SizedBox(height: 8),
                //           ],
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       child: Container(
                //         padding: EdgeInsets.all(16),
                //         decoration: BoxDecoration(
                //           border: Border.all(color: Color(0xFF132909)),
                //           color: Color(0xFFFFFFFF),
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //         height: 100, // Increase the height here
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             Text(
                //               'Potato',
                //               style: TextStyle(
                //                 fontSize: 18,
                //                 color: Colors.black,
                //                 // fontWeight: FontWeight.bold,
                //               ),
                //             ),
                //             SizedBox(height: 8),
                //             Row(
                //               children: [
                //                 Text(
                //                   '5650/Q',
                //                   style: TextStyle(
                //                     fontSize: 15,
                //                     color: Colors.black,
                //                     fontWeight: FontWeight.bold,
                //                   ),
                //                 ),
                //                 SizedBox(width: 4),
                //                 Icon(
                //                   Icons.trending_up,
                //                   color: Colors.green,
                //                   size: 20,
                //                 ),
                //               ],
                //             ),
                            
                //             SizedBox(height: 8),
                //           ],
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       child: Container(
                //         padding: EdgeInsets.all(16),
                //         decoration: BoxDecoration(
                //           border: Border.all(color: Color(0xFF132909)),
                //           color: Color(0xFFFFFFFF),
                //           borderRadius: BorderRadius.circular(12),
                //         ),
                //         height: 100, // Increase the height here
                //        
                //         ),
                //       ),
                //     ),
                //   ],
                // ),