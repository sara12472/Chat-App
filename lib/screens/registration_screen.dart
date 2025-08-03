import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'chat_screen.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final auth = FirebaseAuth.instance;
  late String email;
  late String password;
  late bool showSpinner = false;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 150.0,
                    child: Image.asset('images/icon.png'),
                  ),
                ),
              ),
              SizedBox(height: 60.0),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.0),
                child: TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter Email',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.0),
                child: TextField(
                  onChanged: (value) {
                    password = value;
                  },
                  textAlign: TextAlign.center,
                  obscureText: true,
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter Password',
                  ),
                ),
              ),

              RoundedButton(
                color: Colors.blue,
                text: 'Register',
                onPressed: () async {
                  setState(() {
                    showSpinner = true;
                    Navigator.pushNamed(context, LoginScreen.id);
                  });
                  try {
                    final newUser = await auth.createUserWithEmailAndPassword(
                      email: email,
                      password: password,
                    );

                    if (newUser != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Already Registered?",
                    style: TextStyle(color: Colors.red),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    child: Text(
                      'Login here',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
