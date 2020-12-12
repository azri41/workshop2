import 'package:flutter/material.dart';
import 'package:workshop2/constants.dart';
import '../amedicine_screen.dart';

class Body extends StatelessWidget {
  final List<AMedicine> _allAMedicine = AMedicine.allAMedicine();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Adult's Medicine List",
            style: new TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
          ),
        ),
        body: new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: getHomePageBody(context)));
  }

  getHomePageBody(BuildContext context) {
    return ListView.builder(
      itemCount: _allAMedicine.length,
      itemBuilder: _getItemUI,
      padding: EdgeInsets.all(0.0),
    );
  }

  // First Task
/* Widget _getItemUI(BuildContext context, int index) {
   return new Text(_allCities[index].name);
 }*/

  Widget _getItemUI(BuildContext context, int index) {
    return new Card(
        child: new Column(

      children: <Widget>[
        new ListTile(
          leading: new Image.asset(
            "assets/" + _allAMedicine[index].image,
            fit: BoxFit.cover,
            width: 100.0,
          ),

          title: new Text(
            _allAMedicine[index].name,
            style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
          subtitle: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(_allAMedicine[index].description,
                    style: new TextStyle(
                        fontSize: 13.0, fontWeight: FontWeight.normal)),
                new Text('Price: ${_allAMedicine[index].price}',
                    style: new TextStyle(
                        fontSize: 12.0, fontWeight: FontWeight.bold)),
              ]),

          //onTap: () {
          //  _showSnackBar(context, _allAMedicine[index]);
         // },
        )
      ],
    ));
  }

  //_showSnackBar(BuildContext context, AMedicine item) {
  //  final SnackBar objSnackbar = new SnackBar(
  //    content: new Text("${item.name} usage is ${item.description}"),
  //    backgroundColor: Colors.amber,
  //  );
  //  Scaffold.of(context).showSnackBar(objSnackbar);
 // }
}