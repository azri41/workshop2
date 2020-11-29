// import 'package:flutter/material.dart';

// // class OrderScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Body(),
// //     );
// //   }
// // }

// import 'package:workshop2/pages/Medicine/medicine_screen.dart';

// class Cart extends StatefulWidget {
//   final List<Medicine> _cart;

//   Cart(this._cart);

//   @override
//   _CartState createState() => _CartState(this._cart);
// }

// class _CartState extends State<Cart> {
//   _CartState(this._cart);

//   List<Medicine> _cart;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
//       ),
//       body: ListView.builder(
//           itemCount: _cart.length,
//           itemBuilder: (context, index) {
//             var item = _cart[index];
//             return Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
//               child: Card(
//                 elevation: 4.0,
//                 child: ListTile(
//                   leading: Icon(
//                     item.icon,
//                     color: item.color,
//                   ),
//                   title: Text(item.name),
//                   trailing: GestureDetector(
//                       child: Icon(
//                         Icons.remove_circle,
//                         color: Colors.red,
//                       ),
//                       onTap: () {
//                         setState(() {
//                           _cart.remove(item);
//                         });
//                       }),
//                 ),
//               ),
//             );
//           }),
//     );
//   }
// }