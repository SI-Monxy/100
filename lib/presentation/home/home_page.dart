import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('100'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/media/Cccf3akUsAAE9Zg.png'
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'もんくし  @monxy747',
                                style: TextStyle(fontSize: 18),
                              )
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(Icons.more_vert)
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Text(
                                'もんくしはflutterを勉強中。'
                                'もんくしはflutterを勉強中。'
                                'もんくしはflutterを勉強中。'
                                'もんくしはflutterを勉強中。'
                                    'もんくしはflutterを勉強中。'
                                    'もんくしはflutterを勉強中。'
                                    'もんくしはflutterを勉強中。'
                                    'もんくしはflutterを勉強中。'
                                    'もんくしはflutterを勉強中。'
                                    'もんくしはflutterを勉強中。'
                                    'もんくしはflutterを勉強中。'
                                    'もんくしはflutterを勉強中。'
                                    'もんくしはflutterを勉強中。'
                                    'もんくしはflutterを勉強中。'
                                    'もんくしはflutterを勉強中。'
                                    'もんくしはflutterを勉強中。'
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              child: Icon(Icons.comment_outlined),
                            ),
                            Expanded(
                              child: Icon(Icons.refresh_outlined),
                            ),
                            Expanded(
                              child: Icon(Icons.favorite_border_outlined),
                            ),
                            Expanded(
                              child: Icon(Icons.download_outlined),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}