import 'package:flutter/material.dart';

import 'otp_screen.dart';

class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
              const SizedBox(height: 30),
        
              const Text(
                "Enter your mobile number",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
        
              const SizedBox(height: 30),
        
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Mobile Number",
                  prefixText: "+91 ",
                ),
              ),
        
              const Spacer(),
        
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  shape: const CircleBorder(),
                  backgroundColor: Color(0xff53B175),
        
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(),));
                  },
                  child: const Icon(Icons.arrow_forward, color: Colors.white,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}