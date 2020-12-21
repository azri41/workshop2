import 'package:firebase_auth/firebase_auth.dart';
import 'package:workshop2/models/user.dart';
import 'package:workshop2/services/database.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on FirebaseUser
  TheUser _userFromFirebaseUser(User user){
    return user != null ? TheUser(uid: user.uid,  email: user.email) : null;
  }


  //auth change user stream
  Stream<TheUser> get user {
    return _auth.authStateChanges()
      .map(_userFromFirebaseUser);
  }

  //Sign in anonymous
  Future loginAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  //Sign in with email & pass
  Future loginWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  //Register with email & pass
  Future registerWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  //Register user details with same uid
  Future registerUserDetails(String name, String phoneNum, String address) async {
    try{
      final User user = _auth.currentUser;

      //create a new document for the user with the uid
      await DatabaseService(uid: user.uid).updateUserData(name, phoneNum, address);
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }    
  }

  //Sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

}