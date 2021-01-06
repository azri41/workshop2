import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class AMedicineScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

    AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}









// import 'package:flutter/material.dart';
// import 'package:workshop2/components/Sidebar/navigation_bloc.dart';
// import 'package:workshop2/pages/AdultMedicine/components/body.dart';

// class AMedicine {

//   final String name;
//   final String image;
//   final String description;
//   final String price;

//   AMedicine({this.name,this.description,this.price,this.image});

//   static List<AMedicine> allAMedicine()
//   {
//     var lstOfAMedicine = new List<AMedicine>();

//     lstOfAMedicine.add(new AMedicine(name:"Axcel Paracetamol 500mg ",description: "For Relieve of Fever & High Body Temperature and Reducing Headache & Toothache",price: "RM 7",image: "images/adult_fever.jpg"));
//     lstOfAMedicine.add(new AMedicine(name:"Ubat Batuk Cap Ibu Dan Anak",description: "Traditionally used for symptomatic relief of sore throat and cough; to reduce phlegm and body heatiness.",price: "RM 8",image: "images/adult_cough.jpg"));
//     lstOfAMedicine.add(new AMedicine(name:"Hurix's 600 Fluaway Capsule",description: "Traditionally used for relief of FLU and COMMON COLD, Running Nose and Nasal Congestion",price: "RM 9",image: "images/adult_flu.jpg"));
//     lstOfAMedicine.add(new AMedicine(name:"Authentic WEISEN-U Stomach Remedy",description: "Indications Hyperacidity, heartburn, feeling of discomfort in the stomach and feeling of fullness in the stomach",price: "RM 89",image: "images/adult_stomachpain.jpg"));
//     lstOfAMedicine.add(new AMedicine(name:"Smecta Anti-Diarrheals",description: "The contents of the sachet to be thoroughly stirred in a half glass of warm water before taking it orally.",price: "RM 15",image: "images/adult_diarrhea.jpg"));
//     lstOfAMedicine.add(new AMedicine(name:"YumV's, Iron with Vitamin C, Grape Flavor",description: "As a dietary supplement, take two 2 jellies per day",price: "RM 40",image: "images/adult_vitamin.jpg"));
//     lstOfAMedicine.add(new AMedicine(name:"Eye Glow Relief Eye Drops ",description: "Used for sore, swollen and watery eyes due to exposure to harsh conditions such as dust, strong wind or when your eyes have been unprotected from chemicals.",price: "RM 8",image: "images/adult_eye.jpg"));
//     lstOfAMedicine.add(new AMedicine(name:"Bactidol 250ml",description: "Relieves mouth ulcers and sore throats. Protects against oral bacterial and fungal infections. ",price: "RM 12",image: "images/adult_mouth.jpg"));
//     lstOfAMedicine.add(new AMedicine(name:"Shoulder Pain Plaster Health Care",description: "Applicable to cervical spondylosis, per arthritis of shoulder, bone hyperplasia, lumbar intervertebral disc herniation, rheumatoid arthritis, fall injury, lumbar leg pain, etc.",price: "RM 24",image: "images/adult_backpain.jpg"));
//     lstOfAMedicine.add(new AMedicine(name:"Hurix's Toothache Drop",description: "Brush off and clean the remains food at teeth cavity, then apply 1-2 drops into the cavity, or use a plug of cotton wool to apply directly at cavity.",price: "RM 8",image: "images/adult_tooth.jpg"));
//     lstOfAMedicine.add(new AMedicine(name:"Migraide Homeopathic",description: "For the temporary relief of minor aches & pains associated with headaches or migraine headaches.",price: "RM 45",image: "images/adult_migrain.jpg"));
//     return lstOfAMedicine;
//   }
// }

// class AMedicineScreen extends StatelessWidget with NavigationStates{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Body(),
//     );
//   }
// }