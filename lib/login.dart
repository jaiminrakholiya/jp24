import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Heading

            const Icon(Icons.person_2_outlined),
            const Text("Welcome To EBookHub"),
            const SizedBox(height: 10),

            // EMAIL
            const SizedBox(height: 10),
            Container(
              child: Container(
                child: TextFormField(
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    prefixIcon: const Icon(Icons.email, size: 30),
                    labelText: "EMAIL",
                    labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            // Password

            const SizedBox(height: 10),
            Container(
              child: TextFormField(
                obscureText: true,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  prefixIcon: const Icon(Icons.lock, size: 30),
                  labelText: "PASSWORD",
                  labelStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ))
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("SUBMIT"))),
            ),
          ],
        ),
      ),
    );
  }
}
