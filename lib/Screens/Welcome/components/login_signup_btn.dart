import 'package:flutter/material.dart';


import '../../../constants.dart';
import '../../Login/login_screen.dart';
import '../../Signup/signup_screen.dart';


class LoginAndSignupBtn extends StatefulWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  _LoginAndSignupBtnState createState() => _LoginAndSignupBtnState();
}

class _LoginAndSignupBtnState extends State<LoginAndSignupBtn> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginScreen();
                },
              ),
            );

            if (result != null && result is String) {
              // Jika pengguna berhasil login, refresh teks field
              setState(() {
                _textEditingController.text = result;
              });
            }
          },
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
                  return SignUpScreen();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryLightColor,
            elevation: 0,
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
