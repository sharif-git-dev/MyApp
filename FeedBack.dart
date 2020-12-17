import 'package:flutter/material.dart';

class FeedBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text('FeedBack Page'),
            backgroundColor: Colors.redAccent,
          ),
          // ignore: missing_required_param
          body: Padding(
            
            padding: EdgeInsets.all(29),
            child: Center(
              
                child:
                    ListView(scrollDirection: Axis.vertical, children: <Widget>[
              Align(
                  alignment: Alignment.topCenter + Alignment(0, 0),
                  child: Text(
                    'Things I am about to learn!',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87),
                    textAlign: TextAlign.center,
                  )),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  '                                                                                             1-Rive or Flare is a tool that allows designers and developers to easily add high-quality animation to Flutter ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL4ystE4LzrHWEhpXxyIjjUK7nZ0NJaQctCA&usqp=CAU'),
                  radius: 90,
                  backgroundColor: Colors.black12,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  '                                                                                           2-there is still alot to uncover and learn in flutter, i\'m still in the beginning but i planning to learn more fastly and deftly ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://play-lh.googleusercontent.com/sdvgBLwun1bPr00CtsuXIESoNtl-zh6cwqtXotzgRVowcbqiwkSb78rEvwDGt3TupQ', 
                      ),
                  radius: 90,
                  backgroundColor: Colors.white70,
                ),
              ),
            ])),
          )),
    );
  }
}
