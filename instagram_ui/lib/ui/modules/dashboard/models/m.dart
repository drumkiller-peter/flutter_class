import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:instagram_ui/models/user_model.dart';

class M {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email'],
  );
  Future<void> signUpWithGoogle() async {
    await _googleSignIn.signOut();
    GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final googleAuth = await googleSignInAccount.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await firebaseAuth.signInWithCredential(credential);
    } else {
      print("User Cancelled the process");
    }
  }

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    try {
      print("Signign up");
      UserCredential response = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      print(response);
      AuthCredential emailAuthCredential =
          EmailAuthProvider.credential(email: email, password: password);

      await response.user?.linkWithCredential(emailAuthCredential);
      await saveUser(UserModel(
          email: email, password: password, uid: response.user?.uid ?? ""));
    } on FirebaseAuthException catch (e) {
      print("Exception has occured $e");
    }
  }

  signInWithEmailAndPassword(String email, String password) async {
    try {
      await firebaseAuth.signOut();
      final response = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      print("Success $response");

      var token = await firebaseAuth.currentUser?.getIdToken(true);
      print(token);
      await saveUser(UserModel(
          email: email, password: password, uid: response.user?.uid ?? ""));

      //TODO:  UserKo data lai chai save garnu paryo...
    } on FirebaseAuthException catch (e) {
      print("Firebase Auth Exception has occured $e");
    } on Exception catch (e) {
      print("Exception has occured $e");
    }
  }

  Future<void> saveUser(UserModel userModel) async {
    // await firestore.collection('user').add(userModel.toMap());

    // 1. Collection reference linus
    // 2. Access Document Crud

    CollectionReference collectionReference = firestore.collection("user");
    DocumentReference dr = collectionReference.doc(userModel.uid);
    await dr.set(userModel.toMap());

    // await firestore
    //     .collection('user')
    //     .doc(userModel.uid)
    //     .set(userModel.copyWith(email: "EMAMAMAMA").toMap());
  }

  Future<List<UserModel>> getUser() async {
    // Reference the 'user' collection
    CollectionReference collectionRef =
        FirebaseFirestore.instance.collection('user');

    // Fetch all documents from the 'user' collection
    QuerySnapshot querySnapshot = await collectionRef.get();

    // Convert each document's data to a map and collect them in a list
    final allUserData = querySnapshot.docs
        .map((doc) => UserModel.fromMap(doc.data() as Map<String, dynamic>))
        .toList();

    // Print the list of all user data
    print(allUserData);
    return allUserData;
  }

  Future<void> getUserById(String id) async {
    CollectionReference collectionReference = firestore.collection("user");
    DocumentSnapshot r = await collectionReference.doc(id).get();

    print(r.data());
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await firebaseAuth.signOut();
  }
}
