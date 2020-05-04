import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:pagox/models/usuario.dart';
import 'package:pagox/stores/autenticacao/fireStoreServices.dart';

class AuthService with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Usuario usuario = Usuario();
  FireStoreServices cloudFireStore = FireStoreServices();
  ///
  /// return the Future with firebase user object FirebaseUser if one exists
  ///
  Future<FirebaseUser> getUser() {
    return _auth.currentUser();
  }

  // wrapping the firebase calls
  Future logout() async {
    var result = FirebaseAuth.instance.signOut();
    notifyListeners();
    return result;
  }

  // wrapping the firebase calls
  Future createUser(Map usuario) async {
        
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: usuario['email'].toString(),
      password: usuario['senha']
    ).then((FirebaseUser){
      cloudFireStore.salvarUsuario(usuario);
    });
  }

  ///
  /// wrapping the firebase call to signInWithEmailAndPassword
  /// `email` String
  /// `password` String
  ///
  Future<FirebaseUser> loginUser(Map usuario) async {
    try {
      var result = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usuario['email'],
        password: usuario['senha']
      );
      // since something changed, let's notify the listeners...
      notifyListeners();
      return result.user;
    }  catch (e) {
      throw new AuthException(e.code, e.message);
    }
  }
}