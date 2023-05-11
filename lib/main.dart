import 'package:flutter/material.dart';
import 'package:googlesignin/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogIn(),
    );
  }
}

class LogIn extends StatelessWidget {
  LogIn({Key? key}) : super(key: key);
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          onPressed: () {
            signInWithGoogle();
            // _googleSignIn.signIn().then((value) {
            //   String userName = value!.displayName!;
            //   debugPrint(userName);
            //   String profilePic = value!.photoUrl!;
            //   debugPrint(profilePic);
            //   var token = value!.authentication!;
            //   print(token);
            // });
          },
          child: Text('Google Sign in.'),
        ),
        TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.red, foregroundColor: Colors.black),
            onPressed: () {
              signOut();
            },
            child: Text('Logout'))
      ],
    );
  }
}

signInWithGoogle() async {
  final GoogleSignInAccount? googleUser =
      await GoogleSignIn(scopes: <String>["email"]).signIn();

  final GoogleSignInAuthentication googleAuth =
      await googleUser!.authentication;

  debugPrint(googleAuth.accessToken);
}

signOut() async {
  var response = await GoogleSignIn().signOut();
  print(response);
  debugPrint("signed out");
}
