import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:printease/constProp.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                color: Colors.blue[800],
              ),
              child: Stack(
                children: [
                  Center(
                    child: SvgPicture.asset('assets/svg/Group1.svg'),
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
            Expanded(child: process ? Loginup() : SignUp())
          ],
        ),
      ),
    );
  }
}

class Loginup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String>? logValue = {};

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              textF(
                  changin: (value) {
                    logValue?['logEmail'] = value;
                    print(value);
                  },
                  label: "Enter Your Email",
                  ispass: false),
              SizedBox(height: 20),
              textF(
                  changin: (value) {
                    logValue?['logPassword'] = value;
                  },
                  label: "Password",
                  ispass: true),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  print(logValue);
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
              Column(
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
            ],
          ),
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
    double mediaheight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              textF(
                  changin: (value) {
                    initVa0?['name'] = value;
                  },
                  label: "Name",
                  ispass: false),
              SizedBox(
                height: mediaheight * 0.04,
              ),
              textF(
                  changin: (value) {
                    initVa0?['Mail Id'] = value;
                  },
                  label: "Mail Id",
                  ispass: false),
              SizedBox(
                height: mediaheight * 0.04,
              ),
              textF(
                  changin: (value) {
                    initVa0?['MobileNumber'] = value;
                  },
                  label: "Mobile Number",
                  ispass: false),
              SizedBox(
                height: mediaheight * 0.04,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NxtInput(initVa1: initVa0)));
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
                showGeneralDialog(
                      barrierLabel: "otp",
                      barrierDismissible: true,
                    context: context,
                    pageBuilder: (context, _, __) => Scaffold(
                      backgroundColor: Colors.transparent,
                      body: Center(
                        child: Container(
                          height: 250,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white
                          ),
                          child:  Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Enter Your OTP",style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  )),
                      
                                  Pinput(
                                    length: 4,
                                    defaultPinTheme: PinTheme(
                                      height: 56,
                                      width: 50,
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        border: Border.all(color: Colors.black),
                                      )
                                    ),
                                    focusedPinTheme: PinTheme(
                                      height: 56,
                                      width: 50,
                      
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        border: Border.all(color: Colors.blue),
                                      )
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
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
                                  
                                  
                              ],),
                            ),
                          
                        ),
                      ),
                    )
                        );
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
