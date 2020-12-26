import 'package:flutter/material.dart';

class AMedicine {
  final String image, title, description;
  final int price, id;
  final Color color;
  AMedicine({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.color,
  });
}

List<AMedicine> aMedicine = [
  AMedicine(
      id: 6,
      title: "Axcel Paracetamol 500mg",
      price: 7,
      //size: 8,
      description: dummyText6,
      image: "assets/images/adult_fever.jpg",
      color: Color(0xFF64B5F6)),
  AMedicine(
      id: 7,
      title: "Ubat Batuk Cap Ibu Dan Anak",
      price: 8,
      //size: 8,
      description: dummyText7,
      image: "assets/images/adult_cough.jpg",
      color: Color(0xFF64B5F6)),
  AMedicine(
      id: 8,
      title: "HURIX'S 600 FLUAWAY CAPSULE IMPROVED",
      price: 9,
      //size: 10,
      description: dummyText8,
      image: "assets/images/adult_flu.jpg",
      color: Color(0xFF64B5F6)),
  AMedicine(
      id: 9,
      title: "Authentic WEISEN-U Stomach Remedy 30 Tablets",
      price: 89,
      //size: 11,
      description: dummyText9,
      image: "assets/images/adult_stomachpain.jpg",
      color: Color(0xFF64B5F6)),
  AMedicine(
      id: 10,
      title: "Smecta Anti-Diarrheals 10’sachets",
      price: 15,
      //size: 12,
      description: dummyText10,
      image: "assets/images/adult_diarrhea.jpg",
      color: Color(0xFF64B5F6)),

    AMedicine(
      id: 11,
      title: "YumV's, Iron with Vitamin C ",
      price: 40,
      //size: 12,
      description: dummyText11,
      image: "assets/images/adult_vitamin.jpg",
      color: Color(0xFF64B5F6)),

    AMedicine(
      id: 12,
      title: "EYE GLO RELIEF EYE DROPS 10ML  ",
      price: 8,
      //size: 12,
      description: dummyText12,
      image: "assets/images/adult_eye.jpg",
      color: Color(0xFF64B5F6)),

    AMedicine(
      id: 13,
      title: "Bactidol 250ml",
      price: 12,
      //size: 12,
      description: dummyText13,
      image: "assets/images/adult_mouth.jpg",
      color: Color(0xFF64B5F6)),

    AMedicine(
      id: 14,
      title: "Shoulder Pain Plaster Health Care",
      price: 24,
      //size: 12,
      description: dummyText14,
      image: "assets/images/adult_backpain.jpg",
      color: Color(0xFF64B5F6)),

    AMedicine(
      id: 15,
      title: "Hurix's Toothache Drop",
      price: 8,
      //size: 12,
      description: dummyText15,
      image: "assets/images/adult_tooth.jpg",
      color: Color(0xFF64B5F6)),

    AMedicine(
      id: 16,
      title: "Migraide Homeopathic ",
      price: 45,
      //size: 12,
      description: dummyText16,
      image: "assets/images/adult_migrain.jpg",
      color: Color(0xFF64B5F6)),
  
];


String dummyText6 =
    "For Relieve of Fever & High Body Temperature and Reducing Headache & Toothache.";

String dummyText7 =
    "This is a traditional medicine, thick, dark brown syrup with sweetish and almond odour. Traditionally used for symptomatic relief of sore throat and cough; to reduce phlegm and body heatiness.";

String dummyText8 =
    "Traditionally used for relief of FLU and COMMON COLD, Running Nose and Nasal Congestion. Adult: 3 Capsules Each Time. 4 Times Daily After Meal with Warm Water.";

String dummyText9 =
    "Indications Hyperacidity, heartburn, feeling of discomfort in the stomach, feeling of fullness in the stomach, heaviness in the chest, belching (burping), nausea (retching, stomach nausea, hangovers and drunken retching, etc.), over-drinking, stomach pain, promotion of digestion, indigestion, anorexia, over-eating.";

String dummyText10 =
     "The contents of the sachet to be thoroughly stirred in a half glass of warm water before taking it orally. An average of 3 sachets per day. Dosage can be doubled at the beginning of the treatment.";

String dummyText11 =
     "As a dietary supplement, take two (2) jellies per day.  Chew thoroughly before swallowing.";

String dummyText12 =
      "Used for sore, swollen and watery eyes due to exposure to harsh conditions such as dust, strong wind or when your eyes have been unprotected from chemicals like chlorine from swimming or prolonged rubbing of the eyes.";

String dummyText13 =
      "Relieves mouth ulcers and sore throats. Protects against oral bacterial and fungal infections. Clinically proven dual action mouthwash";

String dummyText14 =
      "Applicable to cervical spondylosis, per arthritis of shoulder, bone hyperplasia, lumbar intervertebral disc herniation, rheumatoid arthritis, fall injury, lumbar leg pain, etc.";

String dummyText15 =
      "Brush off and clean the remains food at teeth cavity, then apply 1-2 drops into the cavity, or use a plug of cotton wool to apply directly at cavity.";

String dummyText16 =
      "For the temporary relief of minor aches & pains associated with headaches or migraine headaches.";