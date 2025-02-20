import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Test page",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: const Column(
        children: [
       
        ],
        
     ),  
    );
  }
}
