import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/ui/modules/auth/login/repository/authentication_repository.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  final AuthenticationRepository _googleSignInRepository =
      AuthenticationRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            var user = snapshot.data;

            if (!snapshot.hasError) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (user?.email == null)
                      ElevatedButton(
                        onPressed: () async {
                          await _googleSignInRepository.signInWithGoogle();
                        },
                        child: const Text("Sign in with Google"),
                      ),
                    ElevatedButton(
                      onPressed: () async {
                        await _googleSignInRepository
                            .createUserWithEmailPassword(
                                "ooaooasjoasas@abc.com", "password123");
                      },
                      child: const Text("Sign up With Email/Password"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await _googleSignInRepository
                            .signInWithEmailAndPassword(
                                "bhai@abc.com", "password123");
                      },
                      child: const Text("Sign in With Email/Password"),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        await _googleSignInRepository.signOut();
                      },
                      child: const Text("Sign out"),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
