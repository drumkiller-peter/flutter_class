import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:instagram_ui/models/user_model.dart';

class AuthenticationRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  /// This function is used to sign in a user with their Google account.
  /// It uses the Google Sign-In plugin to authenticate the user and obtains
  /// their Google account details.
  ///
  /// The `signInWithCredential` function is used to sign in the user with the
  /// Google account credentials obtained from the Google Sign-In plugin.
  ///
  /// This function is useful when a user wants to sign in with their Google
  /// account instead of email and password authentication.
  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      return _auth.signInWithCredential(credential);
    }
    throw Exception('Sign in with google failed');
  }

  /// Here, we are creating a new user account with email and password.
  /// `createUserWithEmailAndPassword` function creates a new user account
  /// with the provided email and password.
  ///
  /// After creating a new user, `linkWithCredential` function is used to link
  /// email and password authentication with the user.
  ///
  /// `linkWithCredential` function is used to link multiple authentication
  /// methods to an existing user account. For example, in this case, it is
  /// being used to link the email and password authentication with the user.
  ///
  /// Advantage of using `linkWithCredential` is that a user can sign in with
  /// multiple ways like email and password, Google, Facebook, etc.
  ///
  /// This function is useful when a user wants to sign in with multiple
  /// authentication methods instead of just one.
  Future<void> createUserWithEmailPassword(
      String email, String password) async {
    try {
      final UserCredential response = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      final User? user = response.user;
      if (user == null) {
        throw Exception('User is null');
      }

      final AuthCredential emailAuthCredential =
          EmailAuthProvider.credential(email: email, password: password);

      await user.linkWithCredential(emailAuthCredential);
      await saveUser(UserModel(
        email: email,
        password: password,
        uid: user.uid,
      ));
    } on FirebaseAuthException catch (e) {
      print("Exception has occurred: $e");
    }
  }

  /// This function is used to sign in a user with their email and password.
  /// It takes in the email and password as parameters and returns a [UserCredential] object.
  ///
  /// This function is useful when a user wants to sign in with their email and password.
  Future<UserCredential> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    return _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  /// This function is used to sign out the user.
  /// It signs out the user from both the Google Sign-In and Firebase Authentication.
  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }

  /// This function is used to save a user's information to the Firestore database.
  /// It takes in a [UserModel] object as a parameter and saves the user's information
  /// to the 'user' collection in the Firestore database.
  Future<void> saveUser(UserModel userModel) async {
    await _firestore
        .collection('user')
        .doc(userModel.uid)
        .set(userModel.toMap());
  }

  /// This function is used to fetch all the user's information from the Firestore database.
  /// It returns a [List] of [UserModel] objects.
  Future<List<UserModel>> getUsers() async {
    final QuerySnapshot querySnapshot =
        await _firestore.collection('user').get();
    return querySnapshot.docs
        .map((doc) => UserModel.fromMap(doc.data() as Map<String, dynamic>))
        .toList();
  }

  /// This function is used to fetch a specific user's information from the Firestore database.
  /// It takes in a user's id as a parameter and fetches the user's information from the 'user' collection
  /// in the Firestore database.
  Future<void> getUser(String id) async {
    final DocumentSnapshot documentSnapshot =
        await _firestore.collection('user').doc(id).get();
    print(documentSnapshot.data());
  }
}
