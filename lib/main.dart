// import 'package:english_words/english_words.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

// import 'dart:math' as math;

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    print(error);
  }
}
void main(List<String> args) {
  BlocSupervisor.delegate = SimpleBlocDelegate();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Wallets",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                // height: 100,
                // aspectRatio: 4/3,
                viewportFraction: 0.5,
                // aspectRatio: ,

                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 0.0,
                          color: Colors.grey,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      // height: 200,
                      // width: double.infinity,

                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text("Sales Team"),
                                  Text("S\$2,617.14"),
                                ],
                              ),
                              Icon(Icons.more)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("****"),
                              Text("****"),
                              Text("****"),
                              Text("3245")
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text("Card Type"),
                                  Text("VIRTUAL"),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text("VALID THRU"),
                                  Text("12/22"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Card(
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: Column(
            //       children: <Widget>[
            //         Row(
            //           crossAxisAlignment: CrossAxisAlignment.stretch,
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: <Widget>[
            //             Expanded(
            //               child: Column(
            //                 children: <Widget>[
            //                   Text("Sales Team"),
            //                   Text("S\$2,617.14"),
            //                 ],
            //               ),
            //             ),
            //             Expanded(child: Icon(Icons.more)),
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Card(
            //   child: Container(
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: Column(
            //       children: <Widget>[
            //         Row(
            //           crossAxisAlignment: CrossAxisAlignment.stretch,
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: <Widget>[
            //             Column(
            //               children: <Widget>[
            //                 Text("Sales Team"),
            //                 Text("S\$2,617.14"),
            //               ],
            //             ),
            //             Icon(Icons.more)
            //           ],
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
    LayoutBuilder(
         builder: (context, constraint) {
    return SingleChildScrollView(
    child: ConstrainedBox(
    constraints: BoxConstraints(minHeight: constraint.maxHeight),
    child: IntrinsicHeight(
    child: Column(
    children: <Widget>[
    Text("Header"),
    Flexible(

    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(50.0),
    topRight: Radius.circular(50.0),
    // bottomLeft: Radius.circular(10.0),
    ),
    ),
    ),
    flex: 2,
    ),


    ],
    ),
    )
    ),
    );
    }
    );


