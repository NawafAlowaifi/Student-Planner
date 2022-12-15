// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../API/APIClient.dart';
// import '../model/courseKey.dart';

// class PlanScreen2 extends StatefulWidget {
//   static const routeName = '/PlanScreen2';
//   @override
//   State<PlanScreen2> createState() => _PlanScreen2State();
// }

// Widget buildContainer(course, context) {
//   return SizedBox(
//     height: 45,
//     width: 45,
//     child: Padding(
//         padding: const EdgeInsets.all(3),
//         child: Container(
//           decoration: BoxDecoration(color: Theme.of(context).primaryColor),
//           height: 45,
//           width: 45,
//           child: Center(
//               child: Text(
//             course,
//             style: TextStyle(color: Colors.black),
//           )),
//         )),
//   );
// }

// // String isGood = '';

// class _PlanScreen2State extends State<PlanScreen2> {
//   // List<String> hasGone = [];

//   // isComplate(c) {
//   //   bool flage = false;
//   //   for (var element in hasGone) {
//   //     if (element == c) {
//   //       flage = true;
//   //       return flage;
//   //     }
//   //   }
//   //   return flage;
//   // }

//   // isComplate2(c) {
//   //   bool flage = false;
//   //   for (var element in keys2) {
//   //     if (element == c) {
//   //       flage = true;
//   //       return flage;
//   //     }
//   //   }
//   //   return flage;
//   // }

//   // List<courseKey> hasGone1 = [];

//   // List<Key> keys = [
//   //   ValueKey(1),
//   //   ValueKey(2),
//   //   ValueKey(3),
//   //   ValueKey(4),
//   //   ValueKey(5),
//   //   ValueKey(6),
//   //   ValueKey(7),
//   //   ValueKey(8),
//   //   ValueKey(9),
//   //   ValueKey(10),
//   //   ValueKey(11),
//   // ];
//   // String getCourse(c) {
//   //   for (int i = 0; i < hasGone1.length; i++) {
//   //     if (hasGone1[i].key == c) {
//   //       return hasGone1[i].course;
//   //     }
//   //   }
//   //   return 'false';
//   // }

//   // List<Key> keys2 = [];
//   Color Pickcolor(String coursecode) {
//     if (Provider.of<ApiClient>(context, listen: false)
//         .passcourseget()
//         .contains(coursecode)) return Colors.green;
//     return Colors.red;
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   // title: Text('SWE Plan'),
//       //   // actions: [
//       //   //   IconButton(
//       //   //       onPressed: (() => setState(() {
//       //   //             keys2 = [];
//       //   //             hasGone = [];
//       //   //             hasGone1 = [];
//       //   //           })),
//       //   //       icon: Icon(Icons.refresh)),
//       //   // ],
//       // ),
//       body: Padding(
//         padding: const EdgeInsets.only(left: 10, top: 10),
//         child: ListView(
//           shrinkWrap: true,
//           padding: EdgeInsets.fromLTRB(10, 15, 10, 5),
//           children: [
//             Row(
//               children: [
//                 // DragTarget<String>(
//                 //   onWillAccept: (val) => true,
//                 //   onAccept: (String temp) {
//                 //     hasGone.add(temp);
//                 //     hasGone1.add(courseKey(keys[0], temp));
//                 //     keys2.add(keys[0]);
//                 //   },
//                 //   key: keys[0],
//                 //   builder: (
//                 //     context,
//                 //     accepted,
//                 //     rejected,
//                 //   ) {
//                 //     return Center(
//                 //         child: (isComplate2(keys[0]))
//                 //             ? Padding(
//                 //                 padding: const EdgeInsets.all(3),
//                 //                 child: Container(
//                 //                   decoration: BoxDecoration(
//                 //                       color: Theme.of(context).primaryColor),
//                 //                   height: 45,
//                 //                   width: 45,
//                 //                   child: Center(
//                 //                     child: Text(getCourse(keys[0])),
//                 //                   ),
//                 //                 ))
//                 //             : Container(
//                 //                 color: Colors.white,
//                 //                 child: SizedBox(
//                 //                   width: 20,
//                 //                   height: 20,
//                 //                   child: Text(''),
//                 //                 ),
//                 //               ));
//                 //   },
//                 // ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Padding(
//                     padding: const EdgeInsets.all(3),
//                     child: Container(
//                       decoration:
//                           BoxDecoration(color: Theme.of(context).primaryColor),
//                       height: 45,
//                       width: 45,
//                       child: Center(child: Text('ARAB 100')),
//                     ),
//                   ),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Padding(
//                     padding: const EdgeInsets.all(3),
//                     child: Container(
//                       decoration:
//                           BoxDecoration(color: Theme.of(context).primaryColor),
//                       height: 45,
//                       width: 45,
//                       child: Center(child: Text('CHEM 101')),
//                     ),
//                   ),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Padding(
//                     padding: const EdgeInsets.all(3),
//                     child: Container(
//                       decoration:
//                           BoxDecoration(color: Theme.of(context).primaryColor),
//                       height: 45,
//                       width: 45,
//                       child: Center(child: Text('ENGS 100')),
//                     ),
//                   ),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Padding(
//                     padding: const EdgeInsets.all(3),
//                     child: Container(
//                       decoration:
//                           BoxDecoration(color: Theme.of(context).primaryColor),
//                       height: 45,
//                       width: 45,
//                       child: Center(child: Text('MATH 101')),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         '1',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 // DragTarget<String>(
//                 //   onWillAccept: (val) => true,
//                 //   onAccept: (String temp) {
//                 //     hasGone.add(temp);

//                 //     hasGone1.add(courseKey(keys[1], temp));
//                 //     keys2.add(keys[1]);
//                 //   },
//                 //   key: keys[1],
//                 //   builder: (
//                 //     context,
//                 //     accepted,
//                 //     rejected,
//                 //   ) {
//                 //     return Center(
//                 //         child: (isComplate2(keys[1]))
//                 //             ? Padding(
//                 //                 padding: const EdgeInsets.all(3),
//                 //                 child: Container(
//                 //                   decoration: BoxDecoration(
//                 //                       color: Theme.of(context).primaryColor),
//                 //                   height: 45,
//                 //                   width: 45,
//                 //                   child: Center(
//                 //                     child: Text(getCourse(keys[1])),
//                 //                   ),
//                 //                 ))
//                 //             : Container(
//                 //                 color: Colors.white,
//                 //                 child: SizedBox(
//                 //                   width: 20,
//                 //                   height: 20,
//                 //                   child: Text(''),
//                 //                 ),
//                 //               ));
//                 //   },
//                 // ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Padding(
//                     padding: const EdgeInsets.all(3),
//                     child: Container(
//                       decoration:
//                           BoxDecoration(color: Theme.of(context).primaryColor),
//                       height: 45,
//                       width: 45,
//                       child: Center(child: Text('CI 101')),
//                     ),
//                   ),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Padding(
//                     padding: const EdgeInsets.all(3),
//                     child: Container(
//                       decoration:
//                           BoxDecoration(color: Theme.of(context).primaryColor),
//                       height: 45,
//                       width: 45,
//                       child: Center(child: Text('CT 101')),
//                     ),
//                   ),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'ENGS 110',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'ENGS 110',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('ENGS 110')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('ENGS 110')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'ENT 101',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'ENT 101',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('ENT 101')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('ENT 101')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'EPH 101',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'EPH 101',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('EPH 101')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('EPH 101')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'STAT 101',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'STAT 101',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('STAT 101')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('STAT 101')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         '2',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 DragTarget<String>(
//                   onWillAccept: (val) => true,
//                   onAccept: (String temp) {
//                     hasGone.add(temp);

//                     hasGone1.add(courseKey(keys[2], temp));
//                     keys2.add(keys[2]);
//                   },
//                   key: keys[2],
//                   builder: (
//                     context,
//                     accepted,
//                     rejected,
//                   ) {
//                     return Center(
//                         child: (isComplate2(keys[2]))
//                             ? Padding(
//                                 padding: const EdgeInsets.all(3),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Theme.of(context).primaryColor),
//                                   height: 45,
//                                   width: 45,
//                                   child: Center(
//                                     child: Text(getCourse(keys[2])),
//                                   ),
//                                 ))
//                             : Container(
//                                 color: Colors.white,
//                                 child: SizedBox(
//                                   width: 20,
//                                   height: 20,
//                                   child: Text(''),
//                                 ),
//                               ));
//                   },
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CSC 111',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CSC 111',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CSC 111')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CSC 111')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'MATH 106',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'MATH 106',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('MATH 106')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('MATH 106')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'MATH 151',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'MATH 151',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('MATH 151')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('MATH 151')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         '3',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 DragTarget<String>(
//                   onWillAccept: (val) => true,
//                   onAccept: (String temp) {
//                     hasGone.add(temp);

//                     hasGone1.add(courseKey(keys[3], temp));
//                     keys2.add(keys[3]);
//                   },
//                   key: keys[3],
//                   builder: (
//                     context,
//                     accepted,
//                     rejected,
//                   ) {
//                     return Center(
//                         child: (isComplate2(keys[3]))
//                             ? Padding(
//                                 padding: const EdgeInsets.all(3),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Theme.of(context).primaryColor),
//                                   height: 45,
//                                   width: 45,
//                                   child: Center(
//                                     child: Text(getCourse(keys[3])),
//                                   ),
//                                 ))
//                             : Container(
//                                 color: Colors.white,
//                                 child: SizedBox(
//                                   width: 20,
//                                   height: 20,
//                                   child: Text(''),
//                                 ),
//                               ));
//                   },
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CSC 113',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CSC 113',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CSC 113')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CSC 113')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'PHYS 103',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'PHYS 103',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('PHYS 103')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('PHYS 103')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 211',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 211',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 211')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 211')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         '4',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 DragTarget<String>(
//                   onWillAccept: (val) => true,
//                   onAccept: (String temp) {
//                     hasGone.add(temp);

//                     hasGone1.add(courseKey(keys[4], temp));
//                     keys2.add(keys[4]);
//                   },
//                   key: keys[4],
//                   builder: (
//                     context,
//                     accepted,
//                     rejected,
//                   ) {
//                     return Center(
//                         child: (isComplate2(keys[4]))
//                             ? Padding(
//                                 padding: const EdgeInsets.all(3),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Theme.of(context).primaryColor),
//                                   height: 45,
//                                   width: 45,
//                                   child: Center(
//                                     child: Text(getCourse(keys[4])),
//                                   ),
//                                 ))
//                             : Container(
//                                 color: Colors.white,
//                                 child: SizedBox(
//                                   width: 20,
//                                   height: 20,
//                                   child: Text(''),
//                                 ),
//                               ));
//                   },
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CENX 303',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CENX 303',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CENX 303')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CENX 303')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'MATH 244',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'MATH 244',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('MATH 244')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('MATH 244')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'PHYS 104',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'PHYS 104',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('PHYS 104')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('PHYS 104')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         '5',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 DragTarget<String>(
//                   onWillAccept: (val) => true,
//                   onAccept: (String temp) {
//                     hasGone.add(temp);

//                     hasGone1.add(courseKey(keys[5], temp));
//                     keys2.add(keys[5]);
//                   },
//                   key: keys[5],
//                   builder: (
//                     context,
//                     accepted,
//                     rejected,
//                   ) {
//                     return Center(
//                         child: (isComplate2(keys[5]))
//                             ? Padding(
//                                 padding: const EdgeInsets.all(3),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Theme.of(context).primaryColor),
//                                   height: 45,
//                                   width: 45,
//                                   child: Center(
//                                     child: Text(getCourse(keys[5])),
//                                   ),
//                                 ))
//                             : Container(
//                                 color: Colors.white,
//                                 child: SizedBox(
//                                   width: 20,
//                                   height: 20,
//                                   child: Text(''),
//                                 ),
//                               ));
//                   },
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CSC 212',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CSC 212',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CSC 212')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CSC 212')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 312',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 312',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 312')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 312')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 381',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 381',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 381')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 381')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         '6',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 DragTarget<String>(
//                   onWillAccept: (val) => true,
//                   onAccept: (String temp) {
//                     hasGone.add(temp);

//                     hasGone1.add(courseKey(keys[6], temp));
//                     keys2.add(keys[6]);
//                   },
//                   key: keys[6],
//                   builder: (
//                     context,
//                     accepted,
//                     rejected,
//                   ) {
//                     return Center(
//                         child: (isComplate2(keys[6]))
//                             ? Padding(
//                                 padding: const EdgeInsets.all(3),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Theme.of(context).primaryColor),
//                                   height: 45,
//                                   width: 45,
//                                   child: Center(
//                                     child: Text(getCourse(keys[6])),
//                                   ),
//                                 ))
//                             : Container(
//                                 color: Colors.white,
//                                 child: SizedBox(
//                                   width: 20,
//                                   height: 20,
//                                   child: Text(''),
//                                 ),
//                               ));
//                   },
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CSC 220',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CSC 220',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CSC 220')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CSC 220')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 314',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 314',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 314')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 314')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 333',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 333',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 333')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 333')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         '7',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 DragTarget<String>(
//                   onWillAccept: (val) => true,
//                   onAccept: (String temp) {
//                     hasGone.add(temp);

//                     hasGone1.add(courseKey(keys[7], temp));
//                     keys2.add(keys[7]);
//                   },
//                   key: keys[7],
//                   builder: (
//                     context,
//                     accepted,
//                     rejected,
//                   ) {
//                     return Center(
//                         child: (isComplate2(keys[7]))
//                             ? Padding(
//                                 padding: const EdgeInsets.all(3),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Theme.of(context).primaryColor),
//                                   height: 45,
//                                   width: 45,
//                                   child: Center(
//                                     child: Text(getCourse(keys[7])),
//                                   ),
//                                 ))
//                             : Container(
//                                 color: Colors.white,
//                                 child: SizedBox(
//                                   width: 20,
//                                   height: 20,
//                                   child: Text(''),
//                                 ),
//                               ));
//                   },
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CSC 227',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CSC 227',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CSC 227')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CSC 227')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'IS 230',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'IS 230',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('IS 230')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('IS 230')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 321',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 321',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 321')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 321')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         '8',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 DragTarget<String>(
//                   onWillAccept: (val) => true,
//                   onAccept: (String temp) {
//                     hasGone.add(temp);

//                     hasGone1.add(courseKey(keys[8], temp));
//                     keys2.add(keys[8]);
//                   },
//                   key: keys[8],
//                   builder: (
//                     context,
//                     accepted,
//                     rejected,
//                   ) {
//                     return Center(
//                         child: (isComplate2(keys[8]))
//                             ? Padding(
//                                 padding: const EdgeInsets.all(3),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Theme.of(context).primaryColor),
//                                   height: 45,
//                                   width: 45,
//                                   child: Center(
//                                     child: Text(getCourse(keys[8])),
//                                   ),
//                                 ))
//                             : Container(
//                                 color: Colors.white,
//                                 child: SizedBox(
//                                   width: 20,
//                                   height: 20,
//                                   child: Text(''),
//                                 ),
//                               ));
//                   },
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 444',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 444',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 444')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 444')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 479',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 479',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 479')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 479')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 482',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 482',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 482')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 482')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 496',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 496',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 496')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 496')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         '9',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 DragTarget<String>(
//                   onWillAccept: (val) => true,
//                   onAccept: (String temp) {
//                     hasGone.add(temp);

//                     hasGone1.add(courseKey(keys[9], temp));
//                     keys2.add(keys[9]);
//                   },
//                   key: keys[9],
//                   builder: (
//                     context,
//                     accepted,
//                     rejected,
//                   ) {
//                     return Center(
//                         child: (isComplate2(keys[9]))
//                             ? Padding(
//                                 padding: const EdgeInsets.all(3),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Theme.of(context).primaryColor),
//                                   height: 45,
//                                   width: 45,
//                                   child: Center(
//                                     child: Text(getCourse(keys[9])),
//                                   ),
//                                 ))
//                             : Container(
//                                 color: Colors.white,
//                                 child: SizedBox(
//                                   width: 20,
//                                   height: 20,
//                                   child: Text(''),
//                                 ),
//                               ));
//                   },
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'IC 107',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'IC 107',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('IC 107')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('IC 107')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 434',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 434',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 434')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 434')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 477',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 477',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 477')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 477')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 497',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 497',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 497')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 497')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         '10',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 DragTarget<String>(
//                   onWillAccept: (val) => true,
//                   onAccept: (String temp) {
//                     hasGone.add(temp);
//                     hasGone1.add(courseKey(keys[10], temp));
//                     keys2.add(keys[10]);
//                   },
//                   key: keys[10],
//                   builder: (
//                     context,
//                     accepted,
//                     rejected,
//                   ) {
//                     return Center(
//                         child: (isComplate2(keys[10]))
//                             ? Padding(
//                                 padding: const EdgeInsets.all(3),
//                                 child: Container(
//                                   decoration: BoxDecoration(
//                                       color: Theme.of(context).primaryColor),
//                                   height: 45,
//                                   width: 45,
//                                   child: Center(
//                                     child: Text(getCourse(keys[10])),
//                                   ),
//                                 ))
//                             : Container(
//                                 color: Colors.white,
//                                 child: SizedBox(
//                                   width: 20,
//                                   height: 20,
//                                   child: Text(''),
//                                 ),
//                               ));
//                   },
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'IC 108',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'IC 108',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('IC 108')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('IC 108')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 455',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 455',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 455')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 455')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 466',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 466',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 466')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 466')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         '11',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'IC 100',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'IC 100',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('IC 100')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('IC 100')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'IC 101',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'IC 101',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('IC 101')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('IC 101')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'IC 102',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'IC 102',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('IC 102')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('IC 102')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'IC 103',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'IC 103',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('IC 103')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('IC 103')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'IC 104',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'IC 104',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('IC 104')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('IC 104')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         'E1-1',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'IC 105',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'IC 105',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('IC 105')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('IC 105')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'IC 106',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'IC 106',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('IC 106')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('IC 106')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'IC 109',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'IC 109',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('IC 109')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('IC 109')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'QURN 100',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'QURN 100',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('QURN 100')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('QURN 100')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         'E1-2',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'MATH 203',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'MATH 203',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('MATH 203')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('MATH 203')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'MATH 254',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'MATH 254',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('MATH 254')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('MATH 254')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'OPER 122',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'OPER 122',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('OPER 122')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('OPER 122')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         'E2',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'BCH 101',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'BCH 101',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('BCH 101')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('BCH 101')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'GPH 201',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'GPH 201',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('GPH 201')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('GPH 201')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'MBI 140',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'MBI 140',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('MBI 140')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('MBI 140')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'PHYS 201',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'PHYS 201',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('PHYS 201')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('PHYS 201')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'ZOOL 145',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'ZOOL 145',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('ZOOL 145')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('ZOOL 145')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         'E3',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CSC 361',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CSC 361',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CSC 361')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CSC 361')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CENX 318',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CENX 318',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CENX 318')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CENX 318')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CENX 316',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CENX 316',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CENX 316')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CENX 316')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CENX 445',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CENX 445',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CENX 445')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CENX 445')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CSC 215',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CSC 215',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CSC 215')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CSC 215')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CSC 311',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CSC 311',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CSC 311')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CSC 311')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         'E4-1',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CSC 476',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CSC 476',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CSC 476')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CSC 476')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'CSC 478',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'CSC 478',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('CSC 478')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('CSC 478')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'IS 385',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'IS 385',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('IS 385')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('IS 385')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 481',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 481',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 481')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 481')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 483',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 483',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 483')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 483')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         'E4-2',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 484',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 484',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 484')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 484')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 485',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 485',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 485')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 485')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 486',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 486',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 486')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 486')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'SWE 488',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'SWE 488',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('SWE 488')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('SWE 488')),
//                               ),
//                             )),
//                 ),
//                 Flexible(
//                   fit: FlexFit.tight,
//                   child: Draggable(
//                       data: 'IS 485',
//                       onDragCompleted: () => setState(() {}),
//                       feedback: SizedBox(
//                           height: 60,
//                           width: 60,
//                           child: Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(
//                                     child: Text(
//                                   'IS 485',
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.normal),
//                                 )),
//                               ))),
//                       childWhenDragging: Container(),
//                       child: isComplate('IS 485')
//                           ? Container()
//                           : Padding(
//                               padding: const EdgeInsets.all(3),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                     color: Theme.of(context).primaryColor),
//                                 height: 45,
//                                 width: 45,
//                                 child: Center(child: Text('IS 485')),
//                               ),
//                             )),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(3),
//                   child: Container(
//                     decoration:
//                         BoxDecoration(color: Theme.of(context).accentColor),
//                     height: 45,
//                     width: 45,
//                     child: Center(
//                       child: Text(
//                         'E4-3',
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
