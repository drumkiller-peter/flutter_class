import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:instagram_ui/ui/modules/event/event_model.dart';
import 'package:path_provider/path_provider.dart';

class EventRepository {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  final String _event = 'event';

  Future<void> addEvent(EventModel eventModel) async {
    CollectionReference cr = _firebaseFirestore.collection(_event);
    eventModel = eventModel.copyWith(imageUrl: await uploadImage());
    await cr.doc(eventModel.id).set(eventModel.toJson());
  }

  Future<List<EventModel>?> getEvents() async {
    CollectionReference cr = _firebaseFirestore.collection(_event);
    QuerySnapshot querySnapshot = await cr.get();
    var list = querySnapshot.docs
        .map((e) => EventModel.fromJson(e.data() as Map<String, dynamic>))
        .toList();
    return list;
  }

  Future<EventModel?> getEventsById(String id) async {
    CollectionReference cr = _firebaseFirestore.collection(_event);
    // var querySnapshot = await cr.where('id', isEqualTo: id).get();
    // var list = querySnapshot.docs
    //     .map((e) => EventModel.fromJson(e.data() as Map<String, dynamic>))
    //     .toList();
    // return list;
    var res = await cr.doc(id).get();

    return EventModel.fromJson(res.data() as Map<String, dynamic>);
  }

  Future<void> deleteEvent(String id) async {
    CollectionReference cr = _firebaseFirestore.collection(_event);
    await cr.doc(id).delete();
  }

  Stream<List<EventModel>> getRealtimeStreamData() {
    CollectionReference cr = _firebaseFirestore.collection(_event);
    return cr.snapshots().map((event) {
      return event.docs
          .map((e) => EventModel.fromJson(e.data() as Map<String, dynamic>))
          .toList();
    });
  }

  Future<String> uploadImage() async {
    Reference ref = _firebaseStorage
        .ref(_event)
        .child("/${DateTime.now().millisecondsSinceEpoch}");

    var res = await ref.putFile(await getFileFromAssets());
    var url = await res.ref.getDownloadURL();
    return url;
  }

  Future<File> getFileFromAssets() async {
    var tempDir = await getTemporaryDirectory();
    var file =
        File('${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpeg');
    var bytes = await rootBundle.load('assets/images/img.jpeg');
    await file.writeAsBytes(
        bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes));
    return file;
  }
}
