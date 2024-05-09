import 'package:flutter/material.dart';
import 'package:rest0_app/components/my_button.dart';
import 'package:rest0_app/components/my_textfield.dart';
import 'package:rest0_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  void login() {
    /**
     * Login logic
     */

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

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
            "Food Delivery App",
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
          MyButton(text: "Sign In", onTap: login),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not already a member? ",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(
                height: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text("Register here",
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
