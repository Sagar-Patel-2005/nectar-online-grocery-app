import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 30),

            const Text(
              "Enter your 4-digit code",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            const Text("Code"),

            const SizedBox(height: 10),

            TextField(
              keyboardType: TextInputType.number,
              maxLength: 4,
              decoration: const InputDecoration(
                hintText: "- - - -",
              ),
            ),

            const Spacer(),

            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                shape: const CircleBorder(),
                backgroundColor: Color(0xff53B175),

                onPressed: () {
                },
                child: const Icon(Icons.arrow_forward, color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
