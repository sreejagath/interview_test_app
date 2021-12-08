import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_test_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Container(
                      //width: 50,
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'Login to your \naccount',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  //..//color: Color(0xFFf2c408),
                  height: 5,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFf2c408),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    //..//color: Color(0xFFf2c408),
                    height: 5,
                    width: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFf2c408),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Phone Number',
                hintStyle: TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.bold,
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFf2c408)),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFf2c408),
                  //  color: Color(0xFFf2c408),
                  //  borderRadius: BorderRadius.circular(10),

                  //backgroundColor: Color(0xFFf2c408),
                  //  color: Color(0xFFf2c408),
                  //  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Send OTP',
                  style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                  onPressed: () {
                    //Get.off(SignUp());
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                      color: Color(0xFFf2c408),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFFf2c408),
                ),
              ),
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  //Get.off();
                  Get.off(HomePage());
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: Text(
                  'Continue as Guest',
                  style: TextStyle(
                    fontSize: 20,
                    // fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
