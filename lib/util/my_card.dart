import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final color;
  const MyCard({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16)),
        width: 300,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'balance',
                  style: TextStyle(color: Colors.white),
                ),

                // TODO add image 

                SizedBox( height: 35,
                child: Image(image: AssetImage('assets/download.png')))
              ],
            ),
            SizedBox(height: 10),
            const Text('\$5.250.20',
                style: TextStyle(color: Colors.white, fontSize: 28)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '****3456',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '10/24',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
