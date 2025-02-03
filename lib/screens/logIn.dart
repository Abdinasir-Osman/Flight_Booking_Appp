import 'package:flight_booking/screens/sign_up.dart';
import 'package:flutter/material.dart';

class MyLogIn extends StatefulWidget {
  const MyLogIn({super.key});

  @override
  State<MyLogIn> createState() => _MyLogInState();
}

class _MyLogInState extends State<MyLogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Image.asset("lib/images/sigin.png"),
              SizedBox(height: 20.0,),
              
              //Textfield.Eamail
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: TextField(
                decoration: InputDecoration(hintText: "Email", hintStyle: TextStyle(color: Colors.black54, fontSize: 23.0)),
              ),
            ),

              SizedBox(height: 20.0,),

          //Textfield.password
             Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: TextField(
                decoration: InputDecoration(hintText: "Password", hintStyle: TextStyle(color: Colors.black54, fontSize: 22.0)),
              ),
            ),
            SizedBox(height: 20.0,),

            //Text Forgot Password
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot Password", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),),
                ],
              ),
            
            ),
            // Button SignIn
            SizedBox(height: 60.0,),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sign In", style: TextStyle(color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.w500,),
                  ),
      
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(60),
                   child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(color: Color(0xFFc16009), borderRadius: BorderRadius.circular(60)),
                       child: Icon(Icons.arrow_forward_outlined, color: Colors.white, size: 36.0,),
                                   ),
                 )
                ],
              ),
            ),

             SizedBox(height: 30.0,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text("Don't have an Account? ", style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w500,),
            ),
            GestureDetector(
              onTap: () {
                // Navigate to LognInScreen
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignupApp()));
              },
              child: Text("Sign In", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold,),
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