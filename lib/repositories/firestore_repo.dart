import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nakamas_chat/main.dart';
import 'package:nakamas_chat/models/conversation_model.dart';
import 'package:nakamas_chat/models/message_model.dart';
import 'package:nakamas_chat/models/user_model.dart' as model;
import 'package:shared_preferences/shared_preferences.dart';

class FirestoreRepository {

  final FirebaseFirestore firestore; // = FirebaseFirestore.instance;

  FirestoreRepository() : firestore = FirebaseFirestore.instance;

  Future<String> addUser(model.User user) async{
    SharedPreferences _sp = await SharedPreferences.getInstance();

    Map<String, dynamic> data = {};
    data["name"] = user.name;
    data["email"] = user.email;
    data["id"] = "";

    DocumentReference docRef = await firestore.collection('users').add(data);
    log(docRef.toString());
    log(user.name);
    log(user.email);
    data["name"] = user.name;
    data["email"] = user.email;
    data["id"] = docRef.id;
    await _sp.setString('firestoreId', docRef.id);
    await firestore.collection('users').doc(docRef.id).update(data);
    return docRef.id;
  }

  Future<String> getUser(String id) async {
    try {
      // Get reference to Firestore collection
      var collectionRef = firestore.collection('users');

      var doc = await collectionRef.doc(id).get();
      return doc.data()!["name"];
    } catch (e) {
      log(e.toString());
      return "";
    }
  }

  Future<String> checkIfUserExists(String email) async {
    try {
      var collectionRef = firestore.collection('users');

      var doc = await collectionRef.where('email', isEqualTo: email).get();
      if(doc.docs.length > 0) {
        return doc.docs.first.id;
      }else {
        return "";
      }

    } catch (e) {

      return "";
    }
  }

  Future<Conversation> getConversation(String uid, String peerID) async{
    var collectionRef = firestore.collection('messages');
    List<String> ids = [uid, peerID];
    log("ids.toString()");
    log(ids.toString());
    var doc = await collectionRef.where('users', arrayContainsAny: ids).get();
    if(doc.docs.length > 0) {
      log(doc.docs.first.toString());
      log(doc.docs.first.id.toString());
      Conversation conversation = Conversation.fromFirestore2(await getConversationWithId(doc.docs.first.id));
      log(conversation.toString());
      return conversation;
    }else {
      log("getConversation - EMPTY");
      return Conversation.newConversation();
    }
  }

  Future<DocumentSnapshot> getConversationWithId(String convoID) async{
    var doc = await firestore
        .collection('messages')
        .doc(convoID).get();
    return doc;
  }

  getAllLastMessages(String userId) {
    firestore
        .collection('messages')
        .where('users', arrayContains: userId)
        .snapshots();
  }

  updateMessageRead(Message message) {
    final DocumentReference documentReference = firestore
        .collection('messages')
        .doc(message.convoID)
        .collection(message.convoID)
        .doc(message.id);
    SetOptions options = SetOptions(merge: true);
    documentReference.set(<String, dynamic>{'read': true}, options);
  }

  sendMessage(
      String convoID,
      String id,
      String pid,
      String content,
      DateTime timestamp,
      ) async {
    final DocumentReference convoDoc =
    firestore.collection('messages').doc(convoID);

    convoDoc.set(<String, dynamic>{
      'lastMessage': <String, dynamic>{
        'idFrom': id,
        'idTo': pid,
        'timestamp': timestamp.millisecondsSinceEpoch.toString(),
        'content': content,
        'read': false
      },
      'users': <String>[id, pid]
    }).then((dynamic success) {
      final DocumentReference messageDoc = firestore
          .collection('messages')
          .doc(convoID)
          .collection(convoID)
          .doc(timestamp.millisecondsSinceEpoch.toString());

      firestore.runTransaction((Transaction transaction) async {
        await transaction.set(
          messageDoc,
          <String, dynamic>{
            'idFrom': id,
            'idTo': pid,
            'timestamp': DateTime.now().millisecondsSinceEpoch.toString(),
            'content': content,
            'read': false
          },
        );
      });
    });
  }

  Stream<List<model.User>> streamAllUsers(String uid) {
    return firestore
        .collection('users')
        .where('id', isNotEqualTo: uid)
        .snapshots(includeMetadataChanges: true)
        .map((QuerySnapshot list) => list.docs
        .map((DocumentSnapshot snap) => model.User.fromFirestore(snap.data() as Map<String, dynamic>))
        .toList())
        .handleError((dynamic e) {
      log("error: streamAllUsers");
      print(e);
    });
  }

  Stream<List<Message>> streamMessagesForConversationDesc(String convoId) {
    return firestore
        .collection('messages')
        .doc(convoId)
        .collection(convoId)
        .orderBy('timestamp', descending: true)
        .limit(20)
        .snapshots(includeMetadataChanges: true).map((QuerySnapshot list) => list.docs
        .map((DocumentSnapshot snap) => Message.fromFirestore(snap, convoId))
        .toList())
        .handleError((dynamic e) {
          log("error: streamMessagesForConversationDesc");
      print(e);
    });
  }

  Stream<List<Conversation>> streamConversations(String uid) {

    String userID = sharedPreferences.getString("firestoreId")!;
    return firestore
        .collection('messages')
        .orderBy('lastMessage.timestamp', descending: true)
        .where('users', arrayContains: uid)
        .snapshots()
        .map((QuerySnapshot list) => list.docs
        .map((DocumentSnapshot snap) {
          Conversation conversation = Conversation.fromFirestore(snap, userID);
          getUser(conversation.interlocutorId).then((value) {
            conversation = conversation.copyWith(interlocutor: value);
            // interlocutor = value;
            return null;
          });
          return conversation;
        })
        .toList());
  }
}