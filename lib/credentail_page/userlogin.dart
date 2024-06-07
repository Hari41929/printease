import 'package:flutter/material.dart';
import 'package:printease/constProp.dart';

class Userlogin extends StatefulWidget {
  const Userlogin({super.key});

  @override
  State<Userlogin> createState() => _UserloginState();
}

class _UserloginState extends State<Userlogin> {
  bool process = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                color: Colors.blue[800],
              ),
              child: Stack(
                children: [
                  Center(
                    child: Text("hello"),
                  ),
                  Positioned(
                    bottom: 6,
                    left: 20,
                    right: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  process = true;
                                });
                              },
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  process = false;
                                });
                              },
                              child: Center(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            process ? Loginup() : SignUp()
          ],
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String>? initVa0 = {};
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            textF(
                changin: (value) {
                  initVa0?['name'] = value;
                },
                label: "Name",
                ispass: false),
            SizedBox(height: 20),
            textF(
                changin: (value) {
                  initVa0?['Mail Id'] = value;
                },
                label: "Mail Id",
                ispass: false),
            SizedBox(height: 20),
            textF(changin: (value) {
              initVa0?['MobileNumber'] = value;
            }, label: "Mobile Number", ispass: false),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                
                Navigator.push(context, MaterialPageRoute(builder: (context)=>NxtInput(initVa1: initVa0)));
              },
              child: Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: Text(
                    "NEXT",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "If you're a Consumer?",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        child: Text(
                          "click here",
                          style: TextStyle(color: Colors.blue[400]),
                        ),
                        onTap: () {
                          // Handle tap
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Added spacing between rows
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "If you're a Distributor?",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        child: Text(
                          "click here",
                          style: TextStyle(color: Colors.blue[400]),
                        ),
                        onTap: () {
                          // Handle tap
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Loginup extends StatelessWidget {
  const Loginup({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Handle login tap
              },
              child: Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "If you're a Consumer?",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        child: Text(
                          "click here",
                          style: TextStyle(color: Colors.blue[400]),
                        ),
                        onTap: () {
                          // Handle tap
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Added spacing between rows
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "If you're a Distributor?",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        child: Text(
                          "click here",
                          style: TextStyle(color: Colors.blue[400]),
                        ),
                        onTap: () {
                          // Handle tap
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NxtInput extends StatelessWidget {
  NxtInput({required this.initVa1});

  final Map<String, String>? initVa1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 40),
        child: Container(
            child: SingleChildScrollView(
          child: Column(
            children: [
              textF(
                changin: (value) {
                  initVa1?['floorNo'] = value;
                },
                label: "Floor No",
                ispass: false,
              ),
              SizedBox(
                height: 20,
              ),
              textF(
                  changin: (value) {
                    initVa1?['compNam'] = value;
                  },
                  label: "Company Name",
                  ispass: false),
              SizedBox(
                height: 20,
              ),
              textF(
                  changin: (value) {
                    initVa1?['nameOfBuilding'] = value;
                  },
                  label: "Name Of The Building",
                  ispass: false),
              SizedBox(
                height: 20,
              ),
              textF(
                  changin: (value) {
                    initVa1?['Street/Road'] = value;
                  },
                  label: "Road/Street",
                  ispass: false),
              SizedBox(
                height: 20,
              ),
              textF(
                  changin: (value) {
                    initVa1?['Town/City'] = value;
                  },
                  label: "City/Town/Village/Locality",
                  ispass: false),
              SizedBox(
                height: 20,
              ),
              textF(
                  changin: (value) {
                    initVa1?['taluk'] = value;
                  },
                  label: "Taluk",
                  ispass: false),
              SizedBox(
                height: 20,
              ),
              textF(
                  changin: (value) {
                    initVa1?['state'] = value;
                  },
                  label: "State",
                  ispass: false),
              SizedBox(
                height: 20,
              ),
              textF(
                  changin: (value) {
                    initVa1?['pinCode'] = value;
                  },
                  label: "Pin Code",
                  ispass: false),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  // Handle login tap
                  print(initVa1);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NxtInputtwo(
                                initVal: initVa1,
                              )));
                },
                child: Container(
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Center(
                    child: Text(
                      "NEXT",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class NxtInputtwo extends StatelessWidget {
  NxtInputtwo({this.initVal});

  final Map<String, String>? initVal;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 550,
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            textF(
              changin: (value) {
                initVal?['passw'] = value;
              },
              label: "Password",
              ispass: true,
            ),
            SizedBox(
              height: 20,
            ),
            textF(
              changin: (value) {
                initVal?['confirmPassw'] = value;
              },
              label: "Confirm Password",
              ispass: true,
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print(initVal);
              },
              child: Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                  child: Text(
                    "Get OTP",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
