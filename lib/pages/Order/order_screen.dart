// import 'package:flutter/material.dart';
// import 'package:workshop2/pages/Cart/cart_screen.dart';
// import 'package:workshop2/pages/Medicine/medicine_screen.dart';

// class OrderScreen extends StatefulWidget {
//   OrderScreen({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _OrderScreenState createState() => _OrderScreenState();
// }

// class _OrderScreenState extends State<OrderScreen> {
//   List<Medicine> _medicines = List<Medicine>();

//   List<Medicine> _cartList = List<Medicine>();

//   @override
//   void initState() {
//     super.initState();
//     _populateMedicines();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Order'),
//         actions: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(right: 16.0, top: 8.0),
//             child: GestureDetector(
//               child: Stack(
//                 alignment: Alignment.topCenter,
//                 children: <Widget>[
//                   Icon(
//                     Icons.shopping_cart,
//                     size: 36.0,
//                   ),
//                   if (_cartList.length > 0)
//                     Padding(
//                       padding: const EdgeInsets.only(left: 2.0),
//                       child: CircleAvatar(
//                         radius: 8.0,
//                         backgroundColor: Colors.red,
//                         foregroundColor: Colors.white,
//                         child: Text(
//                           _cartList.length.toString(),
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 12.0,
//                           ),
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//               onTap: () {
//                 if (_cartList.isNotEmpty) {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => Cart(_cartList),
//                     ),
//                   );
//                 }
//               },
//             ),
//           )
//         ],
//       ),
//       body: _buildGridView(),
//     );
//   }


//   GridView _buildGridView() {
//     return GridView.builder(
//         padding: const EdgeInsets.all(4.0),
//         gridDelegate:
//             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemCount: _medicines.length,
//         itemBuilder: (context, index) {
//           var item = _medicines[index];
//           return Card(
//               elevation: 4.0,
//               child: Stack(
//                 fit: StackFit.loose,
//                 alignment: Alignment.center,
//                 children: <Widget>[
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Icon(
//                         item.icon,
//                         color: (_cartList.contains(item))
//                             ? Colors.grey
//                             : item.color,
//                         size: 100.0,
//                       ),
//                       Text(
//                         item.name,
//                         textAlign: TextAlign.center,
//                         style: Theme.of(context).textTheme.subtitle1
//                       )
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                       right: 8.0,
//                       bottom: 8.0,
//                     ),
//                     child: Align(
//                       alignment: Alignment.bottomRight,
//                       child: GestureDetector(
//                         child: (!_cartList.contains(item))
//                             ? Icon(
//                                 Icons.add_circle,
//                                 color: Colors.green,
//                               )
//                             : Icon(
//                                 Icons.remove_circle,
//                                 color: Colors.red,
//                               ),
//                         onTap: () {
//                           setState(() {
//                             if (!_cartList.contains(item))
//                               _cartList.add(item);
//                             else
//                               _cartList.remove(item);
//                           });
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ));
//         });
//   }

//   void _populateMedicines() {
//     var list = <Medicine>[
//       Medicine(
//         name: 'Panadol Childrens Suspension 1-6 Years ',
//         price: 'RM 8',
//         icon: Icons.medical_services,
//         color: Colors.lightBlue,
//       ),
//       Medicine(
//         name: 'Prospan Cough Syrup ',
//         price: 'RM 17',
//         icon: Icons.medical_services,
//         color: Colors.lightBlue,
//       ),
//       Medicine(
//         name: 'Hurix 600 Flu Cough Syrup ',
//         price: 'RM 13',
//         icon: Icons.medical_services,
//         color: Colors.lightBlue,
//       ),
//       Medicine(
//         name: 'Hyland’s Kids Tummy Ache Tablets ',
//         price: 'RM 47',
//         icon: Icons.medical_services,
//         color: Colors.lightBlue,
//       ),
//       Medicine(
//         name: 'Sambucol Kids Liquid ',
//         price: 'RM 30',
//         icon: Icons.medical_services,
//         color: Colors.lightBlue,
//       ),
//     ];

//     setState(() {
//       _medicines = list;
//     });
//   }
// }