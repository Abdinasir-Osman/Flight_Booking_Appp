import 'package:flight_booking/screens/logIn.dart';
import 'package:flutter/material.dart';

class SignupApp extends StatefulWidget {
  const SignupApp({super.key});

  @override
  State<SignupApp> createState() => _SignupAppState();
}

class _SignupAppState extends State<SignupApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        child: Column(
          children: [
            Image.asset("lib/images/SigUp.png"),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle:
                        TextStyle(color: Colors.black54, fontSize: 22.0)),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle:
                        TextStyle(color: Colors.black54, fontSize: 22.0)),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle:
                        TextStyle(color: Colors.black54, fontSize: 22.0)),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color(0xFF243260),
                          borderRadius: BorderRadius.circular(60)),
                      child: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                        size: 36.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an Account? ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to LognInScreen
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyLogIn()));
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
