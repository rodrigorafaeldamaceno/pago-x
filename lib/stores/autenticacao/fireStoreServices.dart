import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreServices {

  final Firestore _db = Firestore.instance;


  Future salvarUsuario(Map usuario) async => await _db.collection("usuarios").add(usuario);
  

}