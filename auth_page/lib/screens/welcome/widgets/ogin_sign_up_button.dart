import 'package:auth_page/constants.dart';
import 'package:auth_page/screens/Login/login_screen.dart';
import 'package:auth_page/screens/Signup/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const LoginScreen();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1.0,
                color: kPrimaryColor,
              ), // squared borders
              borderRadius: BorderRadius.circular(12), // zero border radius
            ),
          ),
          child: Text(
            "Login".toUpperCase(),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const SignUpScreen();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryLightColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1.0,
                color: kPrimaryLightColor,
              ), // squared borders
              borderRadius: BorderRadius.circular(12), // zero border radius
            ),
          ),
          child: Text(
            "Sign Up".toUpperCase(),
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
