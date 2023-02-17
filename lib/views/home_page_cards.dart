import 'package:flutter/material.dart';
import '../components/add_new_card.dart';

class HomePageCards extends StatefulWidget {
  
  
  @override
  State<HomePageCards> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageCards> {  
  void openDialogNewCards() {
    showDialog(
    context: context, 
    builder: (context) {
     return AddNewCardScreen();
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            // App bar
            const Padding(
              padding:EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
      floatingActionButton: FloatingActionButton(
        onPressed: openDialogNewCards,
        child: Icon(Icons.add),
      ),
    );
  }
}
