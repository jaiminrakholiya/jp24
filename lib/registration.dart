import 'package:flutter/material.dart';
import 'package:jp24/mytext.dart';

class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController repassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Heading

          const Icon(Icons.person_2_outlined),
          const Text(
            "\n \n Welcome To EBookHub",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 30),

          // NAME
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: mytext(
              lb: "Name",
              obscureText: false,
              controller: name,
              prefixIcon: const Icon(Icons.person_2_rounded, size: 30),
            ),
          ),
          const SizedBox(height: 10),

          //EMAIL
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: mytext(
              lb: "Email",
              obscureText: false,
              controller: email,
              prefixIcon: const Icon(Icons.email_rounded, size: 30),
            ),
          ),
          const SizedBox(height: 10),

          // ADDRESS

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: mytext(
              lb: "Address ",
              obscureText: false,
              controller: address,
              prefixIcon: const Icon(Icons.location_on, size: 30),
            ),
          ),
          const SizedBox(height: 10),

          // MOBILE

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: mytext(
              lb: " Mobile",
              obscureText: false,
              controller: mobile,
              prefixIcon: const Icon(Icons.phone_android_rounded, size: 30),
            ),
          ),
          const SizedBox(height: 10),

          // Password

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: mytext(
              lb: "Password",
              obscureText: true,
              controller: password,
              prefixIcon: const Icon(
                Icons.lock,
                size: 30,
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Re Enter Password

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: mytext(
              lb: "Re Enter Password",
              obscureText: true,
              controller: repassword,
              prefixIcon: const Icon(
                Icons.lock,
                size: 30,
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Submit button

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
                child: ElevatedButton(onPressed: () {}, child: const Text("SUBMIT"))),
          ),
        ],
      ),
    );
  }
}
