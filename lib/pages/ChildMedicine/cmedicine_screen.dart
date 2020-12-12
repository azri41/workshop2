import 'package:flutter/material.dart';
import 'package:workshop2/components/Sidebar/navigation_bloc.dart';
import 'package:workshop2/pages/ChildMedicine/components/body.dart';

class CMedicine {
  final String name;
  final String image;
  final String description;
  final String price;

  CMedicine({this.name,this.description,this.price,this.image});

  static List<CMedicine> allCMedicine()
  {
    var lstOfCMedicine = new List<CMedicine>();

    lstOfCMedicine.add(new CMedicine(name:"Panadol Children's Suspension",description: "A strawberry flavoured suspension, Panadol Children’s Suspension contains no alcohol and is aspirin free.",price: "RM 8",image: "images/kid_fever.jpg"));
    lstOfCMedicine.add(new CMedicine(name:"Prospan Cough Syrup",description: "Prospan Cough Syrup is traditionally used for relief of cough, throat irritation and reducing phlegm.",price: "RM 17",image: "images/kid_cough.jpg"));
    lstOfCMedicine.add(new CMedicine(name:"Hurix's 600 Flu Cough Syrup ",description: "Traditionally used to relieve cold, fever, reduces body heatiness, soothes cough, reduces phlegm and relieves sore throat.",price: "RM 13",image: "images/kid_flu.jpg"));
    lstOfCMedicine.add(new CMedicine(name:"Hyland’s Kids Tummy Ache Tablets ",description: "Temporarily relieves minor abdominal, stomach pain, Gas & Diarrhoea for Children.",price: "RM 47",image: "images/kid_stomachpain.jpg"));
    lstOfCMedicine.add(new CMedicine(name:"Sambucol Kids Liquid" ,description: "To support general health, vitality and wellbeing for Daycare, School and Seasonal changes. Tasty Berry flavour with Black Elderberry, Vitamin C & Zinc.",price: "RM 55",image: "images/kid_vitamin.jpg"));
    return lstOfCMedicine;
  }
}

class CMedicineScreen extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}