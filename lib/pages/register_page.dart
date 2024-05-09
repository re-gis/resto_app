import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(
            height: 25,
          ),
          Text(
            "Let's Create An Account For You",
            style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary),
          ),
          const SizedBox(
            height: 25,
          ),
          MyTextField(
              controller: emailController,
              obscureText: false,
              hintText: "Email"),

          const SizedBox(
            height: 10,
          ),

          MyTextField(
              controller: passwordController,
              obscureText: true,
              hintText: "Password"),

          const SizedBox(
            height: 10,
          ),

          MyTextField(
              controller: confirmPasswordController,
              obscureText: true,
              hintText: "Confirm Password"),

          const SizedBox(
            height: 10,
          ),
          MyButton(text: "Sign Up", onTap: () {}),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account? ",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text("Sign In here",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold)),
              )
            ],
          )
        ],
      ),
    );
  }
}
