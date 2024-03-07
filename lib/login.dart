import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isValidEmail = false;
  bool isValidPassword = false;

  validate() {
    setState(() {
      emailController.text.isEmpty ? isValidEmail = true : isValidEmail = false;

      passwordController.text.isEmpty
          ? isValidPassword = true
          : isValidPassword = false;

      if (emailController.text.isEmpty) {
        isValidEmail = true;
        return;
      }
      if (!EmailValidator.validate(emailController.text)) {
        isValidEmail = true;
        return;
      }
      if (passwordController.text.isEmpty) {
        isValidPassword = true;
        return;
      }
    });

    if (!isValidEmail && !isValidPassword) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DashboardScreen()));
      print("Valid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.purple,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Welcome Back!",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Login into your account",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                // height: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18.0,
                      ),
                      child: Container(
                        height: 260,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                    errorText: isValidEmail
                                        ? "Please enter valid email"
                                        : null,
                                    hintText: "Enter the Email ID"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                controller: passwordController,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    errorText: isValidPassword
                                        ? "Please enter valid Password"
                                        : null),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Forgot Password",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    validate();
                                  },
                                  child: Text(
                                    "LOGIN",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            4.0), // Adjust as desired
                                      ),
                                      backgroundColor: Colors.orange),
                                ),
                              )
                            ],
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
                        Text(
                          "Don't have a account?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "SignUp",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
