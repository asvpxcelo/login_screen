import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  // ignore: prefer_typing_uninitialized_variables
  final color;

  const HomePage({
    super.key, 
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    this.color
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // App bar
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      ),
                    child:const Icon(Icons.add)
                  ),
                  // plus button
                ],
              ),
            ),
            const SizedBox(height: 25),
            Container(
              width: 300,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepPurple[300],
                borderRadius: BorderRadius.circular(16)
                ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ),
                    ),
                    SizedBox(height: 10),
                  Text(
                    '\$5.250.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24
                    ),
                    ),
                    SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Card number
                      Text(
                        '**** 5624',
                        style: TextStyle(
                      color: Colors.white,
                    ),
                      ),
                      // Card expirate date
                       Text(
                        '10/28',
                        style: TextStyle(
                          color: Colors.white
                        ),
                        )
                    ],
                  ),
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
