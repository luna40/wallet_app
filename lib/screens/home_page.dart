import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Column(
            
        children: [
          // appbar
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Text('My',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(' Card', style: TextStyle(fontSize: 24)),
                ]),
                CircleAvatar(
                    child: Icon(Icons.add), backgroundColor: Colors.grey),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),

          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(
                  color: Colors.deepPurple[200],
                ),
                MyCard(
                  color: Colors.blue,
                ),
                MyCard(
                  color: Colors.orangeAccent,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
          ),
          SizedBox(
            height: 25,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: -8,
                    lightSource: LightSource.topLeft,
                    color: Colors.purple[300]),
                child:
                    NeumorphicIcon(Icons.arrow_back_ios_new_rounded, size: 50),
              ),
              Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: -8,
                    lightSource: LightSource.topLeft,
                    color: Colors.blue[300]),
                child: NeumorphicIcon(
                  Icons.card_membership_rounded,
                  size: 50,
                ),
              ),
              Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: -8,
                    lightSource: LightSource.topLeft,
                    color: Colors.pink[300]),
                child: NeumorphicIcon(
                  Icons.list_alt_rounded,
                  size: 50,
                ),
              )

              //send button
              // pay button
              //bills button
            ],
          ),

          Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 8,
                      lightSource: LightSource.topLeft,
                      color: Colors.purple[100]),
                  child: NeumorphicIcon(
                    Icons.graphic_eq_outlined,
                    size: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment. start,
                    children: const [
                      Text(
                        'Stastistics',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Pays and Income',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                )
              ],
              // button
              //text
              //arrow
            ),
          ),
          
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: 12,
                        lightSource: LightSource.topLeft,
                        color: Colors.purple[100]),
                    child: NeumorphicIcon(
                      Icons.graphic_eq_outlined,
                      size: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Transactions',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Transaction History',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                  )
                ],
                // button
                //text
                //arrow
                    
                      ),
            ),
        ],
      )),
    );
  }
}
