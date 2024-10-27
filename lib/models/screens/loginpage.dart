import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rashidjafarov/models/screens/components/homescreen.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var userNameTextEditController = TextEditingController();
  var passwordNameTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chanta boutique',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lottie animation
            Lottie.network(
              'https://lottie.host/f39a9ec2-b074-4a28-863d-7d1899dbac14/CW7jHtcnbK.json',
              height: 350,
              width: 350,
            ),
            SizedBox(height: 20), // Space between animation and text fields

            // User Name TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                controller: userNameTextEditController,
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.black,
                ),
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'User Name',
                  hintStyle: TextStyle(color: Colors.black54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15), // Space between text fields

            // Password TextField
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                controller: passwordNameTextEditController,
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.black,
                ),
                maxLines: 1,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10), // Space between text field and "Forgot Password"

            // Forgot Password Text
            Text(
              'Forgot Password?',
              style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), // Space before button

            // Login Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.white,
                elevation: 25,
                fixedSize: Size(270, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                print('Login button pressed');
                Navigator.push(context, CupertinoPageRoute(builder: (context) {
                  return HomeScreen();
                }));
              },
              child: Text('Login',
              style: TextStyle(
                fontSize: 19,
              ),
              ),
            ),
            SizedBox(height: 20), // Space before "Register" link

            // Register Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Do not have an account yet?',
                style: TextStyle(
                  fontSize: 17,
                ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Register link pressed');
                  },
                  child: Text(
                    '  Sing Up',
                    style: TextStyle(
                        color: Colors.blue,
                    fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15), // Space after "Register" link
          ],
        ),
      ),
    );
  }
}