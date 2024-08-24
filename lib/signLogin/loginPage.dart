import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _forKey = GlobalKey<FormState>();

  var userId = "";

  var userPass = "";

  onSubmit() {
    final isValid = _forKey.currentState!.validate();
    if (isValid) {
      submitForm();
      _forKey.currentState!.save();
      Navigator.pushNamed(context, '/home');
    } else {
      print("Error");
    }
  }

  submitForm() {
    print(userId);
    print(userPass);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xFFFCD6FF),
            Color(0xFF8DD9E6),
            Color(0xFF8DD9E6),
            Color(0xFFB8FCDD)
          ],
          stops: [0, 0.3, 0.7, 1],
          // Define the distribution of colors
          begin: Alignment.topLeft,
          // Start gradient from the top-left corner
          end: Alignment.bottomRight,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            backgroundColor: Colors.transparent,
          ),
          body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  height: kToolbarHeight / 3,
                  child: Center(
                    child: Text(
                      "English (UK)",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  // color: Colors.green,
                  height: 200,
                  child: Center(
                      child: Image.asset(
                    "assets/icons/instagram.png",
                    height: 90,
                  )),
                ),
                Container(
                  // color: Colors.purple,
                  height: 176,
                  child: Form(
                    key: _forKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            hintText: "Username, email address or ph.no",
                            hintStyle: TextStyle(color: Colors.black),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          validator: (value) {
                            if (value.toString().isEmpty) {
                              return 'first name should not be Empty';
                            } else {
                              return null;
                            }
                          },
                          key: ValueKey('userId'),
                          onSaved: (value) => userId = value.toString(),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.black),
                            fillColor: Colors.white,
                            filled: true,
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value.toString().isEmpty) {
                              return 'Password should not be Empty';
                            } else {
                              return null;
                            }
                          },
                          key: ValueKey('userPass'),
                          onSaved: (value) => userPass = value.toString(),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 10,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              onSubmit();
                            },
                            child: Text(
                              "Log in",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF0B08C9)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.red,
                      margin: EdgeInsets.only(top: 12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgotten Password?",
                                style: TextStyle(color: Colors.black,fontSize: 16),
                              )),
                          Container(
                            // color: Colors.green,
                            child: Column(

                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width - 10,
                                  height: 45,
                                  child: ElevatedButton(
                                    onPressed: () {

                                    },
                                    child: Text(
                                      "Create new account",
                                      style: TextStyle(color: Colors.blue,fontSize: 16),
                                    ),
                                    style:ElevatedButton.styleFrom(
                                      backgroundColor:Colors.transparent,
                                       elevation: 0,
                                       side: BorderSide(
                                         width:2.0,
                                         color: Colors.blue
                                       ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height:25,
                                        child: Image.asset("assets/icons/mobile.png")),
                                    SizedBox(width: 5,),
                                    Text("Meta",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                                  ],
                                )

                              ],
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
