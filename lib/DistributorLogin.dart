

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:order_stack/Widgets.dart';

class DistributorLogin extends StatefulWidget {
  //final Function toggle;
  //SignIn(this.toggle);
  @override
  _DistributorLoginState createState() => _DistributorLoginState();
}

class _DistributorLoginState extends State<DistributorLogin> {
  final formKey = GlobalKey<FormState>();
  //final Function toggle;
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  //_SignInState(this.toggle);
  //QuerySnapshot snapshotUserInfo;
  bool isLoading = false;
  //AuthMethods authMethods = AuthMethods();
  //DatabaseMethods databaseMethods = DatabaseMethods();
  //HelperFunction helperFunction = HelperFunction();
  /*signIn() {
    if (formKey.currentState.validate()) {
      helperFunction
          .saveUserEmailSharedPreference(emailTextEditingController.text);
      databaseMethods
          .getUserByEmail(emailTextEditingController.text)
          .then((val) {
        setState(() {
          snapshotUserInfo = val;
          helperFunction.saveUserNameSharedPreference(
              snapshotUserInfo.documents[0].data['name']);
        });
      });
      setState(() {
        isLoading = true;
      });

      authMethods
          .signInWithEmailAndPassword(emailTextEditingController.text,
          passwordTextEditingController.text)
          .then((value) {
        if (value != null) {
          helperFunction.saveUserLoggedInPreference(true);
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => ChatRoom()));
        }
      });
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Authentication"),),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height - 50,
              alignment: Alignment.center,
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: emailTextEditingController,
                      style: TextStyle(),
                      decoration: textFieldInputDecoration("Email"),
                    ),
                    TextFormField(
                      controller: passwordTextEditingController,
                      style: simpleTextStyle(),
                      decoration: textFieldInputDecoration("Password"),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    /*Container(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(),
                        ),
                      ),
                    ),*/
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 16,                    ),
                    GestureDetector(
                      onTap: () {
                        //signIn();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xff007EF4),
                                const Color(0xff2A75BC)
                              ],
                            ),
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          "Sign In",
                          style: TextStyle(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    /*Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Text(
                        "Sign In with Google",
                        style: TextStyle(color: Colors.black87, fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),*/
                   /* Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have account?",
                          style: TextStyle(),
                        ),
                        GestureDetector(
                          onTap: () {
                           // toggle();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              " Register now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        )
                      ],
                    )*/
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}