import 'package:flutter/material.dart';
import 'package:green_life/sheard.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.sunny,color: Colors.orangeAccent,),
                        SizedBox(height: 2,),
                        sharedText(txt: '300',color: Colors.white,),
                        SizedBox(height: 2,),
                        sharedText(txt: 'POINTS',color: Colors.white,),
                      ],
                    ),
                    Container(height: 50,color: Colors.grey,width: 1,),
                    SizedBox(width: 3,),
                    Column(
                      children: [
                        Icon(Icons.golf_course,color: Colors.orangeAccent,),
                        SizedBox(height: 2,),
                        sharedText(txt: '600K',color: Colors.white,fontSize: 20,),
                        SizedBox(height: 2,),
                        sharedText(txt: 'ITEMS',color: Colors.white,),
                      ],
                    ),
                    SizedBox(width: 3,),
                    Container(height: 50,color: Colors.grey,width: 1,),
                    Column(
                      children: [
                        Icon(Icons.recycling,color: Colors.orangeAccent,),
                        SizedBox(height: 2,),
                        sharedText(txt: '25',color: Colors.white,),
                        SizedBox(height: 2,),
                        sharedText(txt: 'RECYCLING',color: Colors.white,fontSize: 12),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: sharedText(txt: 'My Stats',fontSize: 22,),
            ),
            Card(
              color: Colors.grey.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircularPercentIndicator(
                      radius: 90.0,
                      lineWidth: 17.0,
                      animation: true,
                      percent: 0.6,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sharedText(txt: '120',color: Colors.red,fontSize: 32),
                          sharedText(txt: 'Item left to go'),
                        ],
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: kPrimaryColor,
                      backgroundColor: Colors.green.shade200,
                    ),
                    Column(
                      children: [
                        sharedText(txt: 'Recycled by community'),
                        sharedText(txt: '100.3K items',fontSize: 24),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(color: kPrimaryColor)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                sharedText(txt: 'Goal For 2023',color: Colors.orangeAccent),
                                sharedText(txt: '600k items'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sharedText(txt: 'You Have contributed'),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: sharedText(txt: '25',fontSize: 24,color: Colors.red),
                        ),
                        sharedText(txt: 'items to our yearly '),
                        sharedText(txt: 'goal so far, way to go !'),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            Icon(Icons.arrow_circle_up,color: Colors.red,),
                            Icon(Icons.add),
                            sharedText(txt: '3%',fontSize: 20),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 12,),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 180,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(width: 160, child: sharedText(txt: 'By recycling you have prevented',color: Colors.white)),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: sharedText(txt: '600g',fontSize: 24,color: Colors.white),
                        ),
                        Container(width:160,child: sharedText(txt: 'Waste from going into Iandfills',color: Colors.white)),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            Icon(Icons.arrow_circle_up,color: Colors.red,),
                            Icon(Icons.add),
                            sharedText(txt: '15%',fontSize: 20,color: Colors.white),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
      Card(
        color: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(8),
            child: sharedText(txt: 'In today’s world products can hardly be called ecofriendly. We use many different resources, not realizing the harm they can do to us. The lack of ecofriendly products can be harmful to the world around us.'),
        ),
        elevation: 8,
      ),
          ],
        ),
      ),
    );
  }
}