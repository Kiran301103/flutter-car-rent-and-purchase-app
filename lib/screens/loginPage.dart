import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:world_of_journey/authentication_repository.dart';
import 'package:world_of_journey/screens/forgotPassword.dart';
import 'package:world_of_journey/screens/loginPage.dart';
import 'package:world_of_journey/screens/select.dart';
import 'package:world_of_journey/screens/signupPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<LoginPage> {
  TextEditingController Email = new TextEditingController();
  TextEditingController Password = new TextEditingController();
  bool isPasswordVisible = false;

  void loginAuth() {
    String _Email, _Password;
    _Email = Email.text.toString();
    _Password = Password.text.toString();
  }

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.jpg', width: 150),
            SizedBox(
              height: 5,
            ),
            Text(
              "Hello",
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Login into your account",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: TextField(
                  controller: Email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "YOUR EMAIL",
                    labelText: "Email ID",
                    prefixIcon: Icon(Icons.email), // Prefix icon
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: TextField(
                  controller: Password,
                  obscureText: !isPasswordVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: "YOUR PASSWORD",
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock), // Prefix icon
                    suffixIcon: IconButton(
                      icon: Icon(isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: togglePasswordVisibility,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      AuthenticationRepository.instance
                          .loginWithEmailAndPassword(
                        Email.text.toString(),
                        Password.text.toString(),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.amber,
                      textStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    child: Text("Login")),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                  ForgotPassword(),
                );
                // Navigate to the forgot password screen
                // Here you can use Get.to() or Navigator.push() to navigate
                // to the ForgotPasswordScreen()
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                  SignupPage(),
                );
                // Navigate to the forgot password screen
                // Here you can use Get.to() or Navigator.push() to navigate
                // to the ForgotPasswordScreen()
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
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
