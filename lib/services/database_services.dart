import 'dart:io';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class DatabaseServices {
  static CollectionReference aCollection =
      FirebaseFirestore.instance.collection('a');

  static Future<void> createOrUpdateProduct(String id, {String data}) async {
    await aCollection.doc(id).set({
      //data
    });
  }

  static Future<DocumentSnapshot> getData(String id) async {
    return await aCollection.doc(id).get();
  }

  static Future<void> deleteData(String id) async {
    await aCollection.doc(id).delete();
  }

  static Future<String> uploadContentFile(File contentFile) async {
    String filename = basename(contentFile.path);

    var ref = FirebaseStorage.instance.ref().child(filename);
    var task = ref.putFile(contentFile);
    var snapshot = await task.onComplete;

    return await snapshot.ref.getDownloadURL();
  }
}
