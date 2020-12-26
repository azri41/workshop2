import 'package:flutter/material.dart';

class CMedicine {
  final String image, title, description;
  final int price, id;
  final Color color;
  CMedicine({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.color,
  });
}

List<CMedicine> cMedicine = [
  CMedicine(
      id: 1,
      title: "Panadol Children's Suspension",
      price: 8,
      //size: 8,
      description: dummyText1,
      image: "assets/images/kid_fever.jpg",
      color: Color(0xFF64B5F6)),
  CMedicine(
      id: 2,
      title: "Prospan Cough Syrup ",
      price: 17,
      //size: 8,
      description: dummyText2,
      image: "assets/images/kid_cough.jpg",
      color: Color(0xFF64B5F6)),
  CMedicine(
      id: 3,
      title: "Hurix's 600 Flu Cough Syrup ",
      price: 13,
      //size: 10,
      description: dummyText3,
      image: "assets/images/kid_flu.jpg",
      color: Color(0xFF64B5F6)),
  CMedicine(
      id: 4,
      title: "Hyland’s Kids Tummy Ache Tablets",
      price: 47,
      //size: 11,
      description: dummyText4,
      image: "assets/images/kid_stomachpain.jpg",
      color: Color(0xFF64B5F6)),
  CMedicine(
      id: 5,
      title: "Sambucol Kids Liquid ",
      price: 234,
      //size: 12,
      description: dummyText5,
      image: "assets/images/kid_vitamin.jpg",
      color: Color(0xFF64B5F6)),
  
];


String dummyText1 =
    "Panadol Children’s Suspension 1 – 6 years provides effective relief of fever and pain in younger children. A strawberry flavoured suspension, Panadol Children’s Suspension 1 – 6 Years contains no alcohol and is aspirin free. It is also gentle on the stomach for the children.";

String dummyText2 =
    "Prospan Cough Syrup is traditionally used for relief of cough, throat irritation and reducing phlegm. Shake well before use.Children > 1 year old: 1 teaspoonful, 3 times daily.School children and adolescents : 2 teaspoonful, 3 times daily";

String dummyText3 =
    "Traditionally used to relieve cold, fever, reduces body heatiness, soothes cough, reduces phlegm and relieves sore throat. 6-12 years: 1-2 teaspoonful (5ml-10ml). 3-5years: 1/2 - 1 teaspoonful (2.5ml-5ml), 3-4 times daily.";

String dummyText4 =
    "Temporarily relieves minor abdominal, stomach pain, Gas & Diarrhoea for Children";

String dummyText5 =
     "To support general health, vitality and wellbeing for Daycare, School and Seasonal changes. Tasty Berry flavour with Black Elderberry, Vitamin C & Zinc. 2 - 4 years: 7.5ml (1/2 tablespoon) once per day. 5 – 12 years: 15ml (1 tablespoon) once per day.";