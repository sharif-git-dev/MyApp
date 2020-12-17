import 'package:flutter/material.dart';
import 'FeedBack.dart';
import './setting.dart';
import 'Temp.dart';
import 'Calculator/Calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Convetor(),
    );
  }
}

class Convetor extends StatefulWidget {
  @override
  _ConvetorState createState() => _ConvetorState();
}

class _ConvetorState extends State<Convetor> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight + Alignment(0, -.2),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://scontent.fada1-3.fna.fbcdn.net/v/t1.0-9/118391404_1226098321061049_4443915272390355599_o.jpg?_nc_cat=108&ccb=2&_nc_sid=09cbfe&_nc_ohc=ka5S4EG5kXEAX-HTeGv&_nc_ht=scontent.fada1-3.fna&oh=666ca6669169cd68b97f19efa752e32b&oe=6000BB7C'),
                          radius: 50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft + Alignment(0, -0.7),
                        child: Text(
                          'Made By',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft + Alignment(0, -0.23),
                        child: Text(
                          'Sharif Jamo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft + Alignment(0, .2),
                        child: Text(
                          'Flutter Developer',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white60,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft + Alignment(0, .8),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white60),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3),
                            child: Text(
                              'verified',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 13),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              ListTile(
                title: Text('Calculator'),
                leading: Icon(
                  Icons.calculate_rounded,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  EdgeInsets.all(50);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Calculator()));
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings_applications_rounded,
                  color: Colors.redAccent,
                ),
                title: Text('Setting Page'),
                onTap: () {
                  EdgeInsets.all(50);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Setting()));
                },
              ),
              ListTile(
                title: Text('Temp Converter'),
                leading: Icon(
                  Icons.local_laundry_service_rounded,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  EdgeInsets.all(50);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Temp(Row())));
                },
              ),
              ListTile(
                title: Text(
                  'FeedBack',
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.redAccent,
                ),
                onTap: () {
                  EdgeInsets.all(50);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FeedBack()));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            'Main Page',
          ),
        ),
        body: (Padding(
            padding: const EdgeInsets.all(30.0),
            child: ListView(scrollDirection: Axis.vertical, children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  'These are the pages that have been Programed!',
                  style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: Text(
                    'Temp Converter',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Temp(Row())));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: Text(
                    'Calculator',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Calculator()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: Text(
                    'Setting Page',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Setting()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  child: Text(
                    'FeedBack Page',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FeedBack()));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  'by the way don\'t forget to take a look at the Drawer took me a lot of time to get just right...',
                  style: TextStyle(color: Colors.black87,fontSize: 23,),
                )),
              ),
            ]))));
  }
}

/*class CustomMultiChildLayout extends StatelessWidget {
  const CustomMultiChildLayout({
    Key key,
    @required this.celController,
    @required this.fahController,
  }) : super(key: key);

  final TextEditingController celController;
  final TextEditingController fahController;

  @override
  Widget build(BuildContext context) {
    
    return Row(
                children: <Widget>[
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Text(
                        'Celsius',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.lightBlue,
                           fontWeight: FontWeight.bold),
                       ),
                       TextField(
                         controller: celController,
                         keyboardType: TextInputType.number,
                       decoration: InputDecoration(
                         suffixText: 'C'
                       ),),
                    ],
                  )),
                  SizedBox(width: 40,),
                  
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Text(
                        'Fahrenheit',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold),
                      ),
                       TextField(
                         controller: fahController,
                         keyboardType: TextInputType.number,
                       decoration: InputDecoration(
                         suffixText: 'F'
                       ),),
                    ],
                  ) ), 
                ],
             );
  }
}
*/
