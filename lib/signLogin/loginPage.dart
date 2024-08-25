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

  void onSubmit() {
    if (userId.isEmpty || userPass.isEmpty) {
      _showMyDialog(context,"Enter your username, email  \naddress or mobile number to \nlogin");
      return;
    }
    // Proceed if both fields are filled
    _forKey.currentState!.save();
    Navigator.pushNamed(context, '/home');
    submitForm();
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
                Color(0xFFFBECFF),
                Color(0xFFEDF6FF),
                Color(0xFFEDF6FF),
                Color(0xFFDDFDEF),
              ],
              stops: [0, 0.3, 0.7, 1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            child: Padding(
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
                    height: 200,
                    child: Center(
                        child: Image.asset(
                          "assets/icons/instagram.png",
                          height: 90,
                        )),
                  ),
                  Container(
                    height: 176,
                    child: Form(
                      key: _forKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(15)),
                              hintText: "Username, email address or ph.no",
                              hintStyle: TextStyle(color: Colors.black),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                _showMyDialog(context, "Please enter your username.");
                                return null; // No space reserved for error message.
                              }
                              return null;
                            },
                            key: ValueKey('userId'),
                            onChanged: (value) {
                              userId = value.toString();
                            },
                            // onSaved: (value) => userId = value.toString(),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(15)),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.black),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            obscureText: true,
                            key: ValueKey('userPass'),
                            onChanged: (value) {
                              userPass = value;
                            },
                            // onSaved: (value) => userPass = value.toString(),
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
                                backgroundColor: MaterialStateProperty.all(Color(0xFF2C3DF6)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 225,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgotten Password?",
                              style: TextStyle(color: Colors.black, fontSize: 16),
                            )),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 10,
                                height: 45,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Create new account",
                                    style: TextStyle(color: Colors.blue, fontSize: 16),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                    side: BorderSide(width: 2.0, color: Colors.blue),
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
                                      height: 25,
                                      child: Image.asset("assets/icons/mobile.png")),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Meta",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 16),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog(BuildContext context, String message) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(

          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          actions: [
            TextButton(onPressed: (){}, child: Text("Create New Account")),
            
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("OK"),
            ),
          ],
          title: Text("Validation Error"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(message),
              ],
            ),
          ),
        );
      },
    );
  }
}
