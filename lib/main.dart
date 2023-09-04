import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
            padding: const EdgeInsets.all(8),
            width: width,
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 270,
                  width: 200,
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade500)),
                          width: 180,
                          height: 25,
                          child: const Center(child: Text("Strawberry pavlova",style: TextStyle(fontSize: 14),))),
                      const SizedBox(height: 10,),
                      Container(
                          width: 180,
                          height: 85,
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade500)),
                          padding: const EdgeInsets.all(5),
                          child: const Text("pavlove is a meringue based dessert named after the russian",)),
                      const SizedBox(height: 10,),
                      Container(
                        width: 180,
                        height: 30,
                        decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade500)),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                          RatingBar.builder(
                              itemCount: 5,
                              itemSize: 12,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) =>
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,

                                  ),
                              onRatingUpdate: (rating){}),
                          const SizedBox(width: 10,),
                          const Text("170 Reviews"),
                          ],),
                      ),
                        const SizedBox(height: 10,),

                        Container(
                          width: 180,
                          height: 100,
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey.shade500)),
                          padding: const EdgeInsets.all(5),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.wysiwyg),
                                  SizedBox(height: 10,),
                                  Text("PREP:"),
                                  SizedBox(height: 10,),
                                  Text("25 min"),
                                ],),

                              Column(children: [
                                Icon(Icons.timer),
                                SizedBox(height: 10,),
                                Text("COOK:"),
                                SizedBox(height: 10,),
                                Text("1 hr"),
                              ],),

                              Column(children: [
                                Icon(Icons.restaurant),
                                SizedBox(height: 10,),
                                Text("FEEDS"),
                                SizedBox(height: 10,),
                                Text("4 - 6"),
                              ],),
                            ],
                          ),
                        )
                      ],
                      ),
                ),
                Expanded(child: Image.asset('assets/dessert.jpg',fit: BoxFit.fill,height: 270,width: 100,)),
                  ],
                ),
            ),
          ));
  }
}
