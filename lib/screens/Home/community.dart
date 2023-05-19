import 'package:flutter/material.dart';
import 'package:green_life/sheard.dart';

class CommunityScreen extends StatelessWidget {
  CommunityScreen({Key? key}) : super(key: key);

  List<String> images = [
    'assets/recycle.png',
    'assets/recycle.jpeg',
    'assets/recycle-reuse.jpg',
    'assets/recycling_weekend.jpg',
    'assets/recycle today.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/community.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 110,
                  ),
                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sharedText(txt: 'ECO Green', color: Colors.white),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.groups,
                                    color: Colors.orangeAccent,
                                  ),
                                  sharedText(
                                      txt: '50 Members', color: Colors.white),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: sharedText(txt: 'Join'),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orangeAccent,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  sharedText(txt: 'Event'),
                  sharedText(txt: 'See All', color: Colors.red),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 90,
                      ),
                      Expanded(
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child:  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  sharedText(txt: '10th Dec 2023  08:00', color: Colors.white,fontSize: 10),
                                  sharedText(txt: 'Indplas is the Largest international', color: Colors.white,fontSize: 14),
                                ],
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
            )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  sharedText(txt: 'News'),
                  sharedText(txt: 'See All', color: Colors.red),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: ListView.separated(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(images[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                           // child: Text('data')
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      sharedText(txt: 'recycling',color: Colors.grey),
                                      Container(width:180,child: sharedText(txt: 'Saving the planet starts with recycling',)),
                                    ],
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          sharedText(txt: 'feb 22 2023',color: Colors.grey),
                                          SizedBox(width: 5,),
                                          sharedText(txt: '2 muns ago',color: Colors.greenAccent)
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.save,color: Colors.grey,),
                                          Icon(Icons.share,color: Colors.grey,),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                   separatorBuilder: (context, index) => Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Divider(thickness: 2,color: Colors.grey,),
                   ),
                  itemCount: images.length,
                  scrollDirection: Axis.vertical,
                )),
          ],
        ),
      ),
    );
  }
}

class CommunityPost extends StatelessWidget {
  final String image;
  final String username;
  final String text;
  final int likes;
  final int comments;

  const CommunityPost({
    Key? key,
    required this.image,
    required this.username,
    required this.text,
    required this.likes,
    required this.comments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            title: Text(
              username,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up),
                  label: Text('$likes'),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.comment),
                  label: Text('$comments'),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
