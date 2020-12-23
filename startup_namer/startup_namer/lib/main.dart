import 'package:flutter/material.dart';
//import 'Flutter_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Welcome 2 Flutter', home: MyMediaQuery2());
  }
}

class MyMediaQuery2 extends StatelessWidget {
  final ScrollController = 
  List<widget> layoutChildren(double boxSide) {
    return [
      Container(
        width: boxSide,
        height: boxSide,
        color: Colors.red,
        alignment: Alignment.center,
        child: Text(
          'First bouuton 1',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      Container(
        width: boxSide,
        height: boxSide,
        color: Colors.green,
        alignment: Alignment.center,
        child: Text(
          'First bouuton 1',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    double boxSide = size.shortestSide - 50;
    return Scaffold(
      body: Center(
        child: Builder(builder: (context){
        
        if (orientation.index == Orientation.landscape.index){
          return Row(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: layoutChildren(boxSide),
          );
        } else {
          return Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: layoutChildren(boxSide),
          );
        }
      }),

      ));
  }
}

class MyMediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      color: Colors.yellow,
      child: Stack(
        //alignment: WrapAlignment.center,
        //runAlignment: WrapAlignment.start,
        children: [
          Column(//mainAxisAlignment: MainAxisAlignment.start,
              children: [
            Container(
                width: size.width * .2,
                height: size.height,
                color: Colors.pink),
          ]),
          Column(
            children: [
              Container(
                  width: size.width * .8,
                  height: size.height / 3,
                  color: Colors.green),
              /*   Container(
              width: size.width / 1,
              height: size.height / 3,
              color: Colors.red),
          Container(
              width: size.width / 1,
              height: size.height / 3,
              color: Colors.white), */
            ],
          ),
        ],
      ),
    ));
  }
}

class MyPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        color: Colors.red,
        child: Text(
          'My Text ',
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    ));
  }
}

class MyRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 800,
        width: 400,
        color: Colors.pink,
        padding: EdgeInsets.all(5.0),
        child: Stack(
          fit: StackFit.loose,
          overflow: Overflow.visible,
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 400,
              width: 700,
              color: Colors.lightBlue[200],
            ),
            Positioned(
                top: 0,
                left: 0,
                height: 100,
                child: Container(
                    height: 200,
                    //width: 400,
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                    color: Colors.grey,
                    child: Wrap(
                      alignment: WrapAlignment.start,
                      direction: Axis.horizontal,

                      //runAlignment: WrapAlignment.center,
                      //mainAxisSize: MainAxisSize.max,
                      //verticalDirection: VerticalDirection.down,
                      //textDirection: TextDirection.rtl,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                            color: Colors.blue,
                            onPressed: () {},
                            child: Text('Button 1')),
                        FlatButton(
                            color: Colors.red,
                            onPressed: () {},
                            child: Text('Button 2')),
                        FlatButton(
                            color: Colors.green,
                            onPressed: () {},
                            child: Text('Button 3')),
                        FlatButton(
                            color: Colors.deepPurple,
                            onPressed: () {},
                            child: Text('Button 3')),
                        FlatButton(
                            color: Colors.cyan,
                            onPressed: () {},
                            child: Text('Button 3')),
                        FlatButton(
                            color: Colors.black,
                            onPressed: () {},
                            child: Text('Button 3')),
                        // FlatButton(color: Colors.green, onPressed: () {},child: Text('Button 3')),
                        // FlatButton(color: Colors.green, onPressed: () {},child: Text('Button 3')),
                        // FlatButton(color: Colors.green, onPressed: () {},child: Text('Button 3')),
                      ],
                    ))),
            Positioned(
              bottom: -20,
              right: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow[200],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildCenter());
  }

  Center buildCenter() {
    return Center(
        child: Container(
      //color: Colors.blue,
      padding: EdgeInsets.all(8.0),
      //constraints: BoxConstraints.expand(),
      width: 200, height: 200,
      //transform: Matrix4.rotationZ(.5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          //color: Colors.blue,
          //borderRadius: BorderRadius.all(Radius.circular(24.0)),
          boxShadow: [
            BoxShadow(color: Colors.red, blurRadius: 40.0, spreadRadius: 2.0)
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.blue, Colors.white]),
          shape: BoxShape.circle),

      child: Center(
        widthFactor: 2,
        //heightFactor: 2,
        child: Text(
          'Flutter Essentials',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ),
    ));
  }
}

void main3() {
  runApp(MaterialApp(title: 'DemoApp', home: HomePage2()));
}

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Home Page'),
      ),
      body: Container(
        height: 200,
        width: 400,
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'My Text 1',
              style: TextStyle(fontSize: 10.0),
            ),
            Text(
              'My Text 2',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'My Text 3',
              style: TextStyle(fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Nis home Page '),
      ),
      body: Container(
        //alignment: Alignment.centerRight,
        width: 300,
        height: 500,
        color: Colors.yellow,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              ' My First Text 1',
              style: TextStyle(fontSize: 23.0, color: Colors.purple),
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Text(
        ' Nis home Page ',
        textAlign: TextAlign.center,
        textScaleFactor: .7,
        style: TextStyle(
          fontSize: 40,
          color: Colors.blue,
        ),
      ),
    );
  }
}
