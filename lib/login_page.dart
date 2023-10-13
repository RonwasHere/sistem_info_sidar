import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
  @override
  void initState() {
    // _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Scaffold(
          backgroundColor: Color(0xff101317),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icon_indraco.png',
                  width: 80,
                  height: 80,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Welcome Back',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.waving_hand_outlined,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'to HR Attendee',
                  style: TextStyle(fontSize: 22, color: Color(0xff3085fe)),
                ),
                Text(
                  'Hello There, login to continue',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                SizedBox(height: 15),
                TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    hintText: 'Email@gmail.com',
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Color(0xff3085fe),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Color(0xff3085fe),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextFormField(
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        obscureText = !obscureText;
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Color(0xff3085fe),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Color(0xff3085fe),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  obscureText: obscureText,
                  // _passwordVisible = false;
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
