import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:workshop2/models/userInfo.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  //collection reference
  final CollectionReference userCollection = FirebaseFirestore.instance.collection('users');
  final CollectionReference medicineCollection = FirebaseFirestore.instance.collection('medicines');

  Future updateUserData(String name, String phoneNum, String address) async {
    return await userCollection.doc(uid).set({
      'name': name,
      'phoneNum': phoneNum,
      'address': address,
    });
  }

  // user details form snapshot
  List<UserInfo> _userDetailsFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc){
      return UserInfo(
        name: doc.data()['name'] ?? '',
        phoneNum: doc.data()['phoneNum'] ?? '',
        address: doc.data()['address'] ?? '',
      );
    }).toList();
  }

  // user info from snapshot
  UserInfo _userInfoFromSnapshot(DocumentSnapshot snapshot) {
    return UserInfo(
      uid:uid,
      name: snapshot.data()['name'],      
      phoneNum: snapshot.data()['phoneNum'], 
      address: snapshot.data()['address'],
    );
  }

  // get user doc stream
  Stream<UserInfo> get userInfo {
    return userCollection.doc(uid).snapshots()
      .map(_userInfoFromSnapshot);
  }
  
  //get user stream
  Stream<List<UserInfo>> get users{
    return userCollection.snapshots()
    .map(_userDetailsFromSnapshot);
  }

}